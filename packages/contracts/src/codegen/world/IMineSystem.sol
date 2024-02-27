// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { VoxelCoord } from "@everlonxyz/utils/src/Types.sol";

/**
 * @title IMineSystem
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface IMineSystem {
  function mine(bytes32 objectTypeId, VoxelCoord memory coord) external returns (bytes32);
}
