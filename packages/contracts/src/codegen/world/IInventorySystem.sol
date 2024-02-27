// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { VoxelCoord } from "./../../Types.sol";

/**
 * @title IInventorySystem
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface IInventorySystem {
  function equip(bytes32 inventoryEntityId) external;

  function unequip() external;

  function drop(bytes32[] memory inventoryEntityIds, VoxelCoord memory coord) external;

  function transfer(bytes32 srcEntityId, bytes32 dstEntityId, bytes32[] memory inventoryEntityIds) external;
}