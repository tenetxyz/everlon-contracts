// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { VoxelCoord } from "@biomesaw/utils/src/Types.sol";

/**
 * @title IAdminTerrainSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface IAdminTerrainSystem {
  function setTerrainObjectTypeIds(VoxelCoord[] memory coord, uint8[] memory objectTypeId) external;

  function setTerrainObjectTypeIds(VoxelCoord[] memory coord, uint8 objectTypeId) external;

  function setTerrainObjectTypeIds(
    VoxelCoord memory lowerSouthwestCorner,
    VoxelCoord memory size,
    uint8 objectTypeId
  ) external;
}
