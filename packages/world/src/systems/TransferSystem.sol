// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { System } from "@latticexyz/world/src/System.sol";
import { getUniqueEntity } from "@latticexyz/world-modules/src/modules/uniqueentity/getUniqueEntity.sol";

import { Player } from "../codegen/tables/Player.sol";
import { PlayerMetadata } from "../codegen/tables/PlayerMetadata.sol";
import { ObjectType } from "../codegen/tables/ObjectType.sol";
import { Position } from "../codegen/tables/Position.sol";
import { ReversePosition } from "../codegen/tables/ReversePosition.sol";
import { Stamina } from "../codegen/tables/Stamina.sol";
import { Equipped } from "../codegen/tables/Equipped.sol";
import { ItemMetadata } from "../codegen/tables/ItemMetadata.sol";

import { VoxelCoord } from "@biomesaw/utils/src/Types.sol";
import { AirObjectID, PlayerObjectID, ChestObjectID } from "@biomesaw/terrain/src/ObjectTypeIds.sol";
import { positionDataToVoxelCoord } from "../Utils.sol";
import { transferInventoryTool, transferInventoryNonTool } from "../utils/InventoryUtils.sol";
import { inSurroundingCube } from "@biomesaw/utils/src/VoxelCoordUtils.sol";

contract TransferSystem is System {
  function transferCommon(bytes32 srcEntityId, bytes32 dstEntityId) internal returns (uint8) {
    bytes32 playerEntityId = Player._get(_msgSender());
    require(playerEntityId != bytes32(0), "TransferSystem: player does not exist");
    require(!PlayerMetadata._getIsLoggedOff(playerEntityId), "TransferSystem: player isn't logged in");

    require(dstEntityId != srcEntityId, "TransferSystem: cannot transfer to self");
    require(
      inSurroundingCube(
        positionDataToVoxelCoord(Position._get(srcEntityId)),
        1,
        positionDataToVoxelCoord(Position._get(dstEntityId))
      ),
      "TransferSystem: destination out of range"
    );

    uint8 srcObjectTypeId = ObjectType._get(srcEntityId);
    uint8 dstObjectTypeId = ObjectType._get(dstEntityId);
    if (srcObjectTypeId == PlayerObjectID) {
      require(playerEntityId == srcEntityId, "TransferSystem: player does not own inventory item");
      require(dstObjectTypeId == ChestObjectID, "TransferSystem: cannot transfer to non-chest");
    } else if (dstObjectTypeId == PlayerObjectID) {
      require(playerEntityId == dstEntityId, "TransferSystem: player does not own destination inventory");
      require(srcObjectTypeId == ChestObjectID, "TransferSystem: cannot transfer from non-chest");
    } else {
      revert("TransferSystem: invalid transfer operation");
    }

    return dstObjectTypeId;
  }

  function transfer(bytes32 srcEntityId, bytes32 dstEntityId, uint8 transferObjectTypeId, uint16 numToTransfer) public {
    uint8 dstObjectTypeId = transferCommon(srcEntityId, dstEntityId);
    transferInventoryNonTool(srcEntityId, dstEntityId, dstObjectTypeId, transferObjectTypeId, numToTransfer);
  }

  function transfer(bytes32 srcEntityId, bytes32 dstEntityId, bytes32 toolEntityId) public {
    uint8 dstObjectTypeId = transferCommon(srcEntityId, dstEntityId);
    transferInventoryTool(srcEntityId, dstEntityId, dstObjectTypeId, toolEntityId);
  }
}
