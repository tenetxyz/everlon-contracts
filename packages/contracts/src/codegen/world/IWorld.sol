// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { IBaseWorld } from "@latticexyz/world/src/codegen/interfaces/IBaseWorld.sol";

import { IBuildSystem } from "./IBuildSystem.sol";
import { ICraftSystem } from "./ICraftSystem.sol";
import { ILibTerrainSystem } from "./ILibTerrainSystem.sol";
import { IMineSystem } from "./IMineSystem.sol";
import { IMoveSystem } from "./IMoveSystem.sol";
import { IPerlinSystem } from "./IPerlinSystem.sol";
import { IPlayerSystem } from "./IPlayerSystem.sol";

/**
 * @title IWorld
 * @notice This interface integrates all systems and associated function selectors
 * that are dynamically registered in the World during deployment.
 * @dev This is an autogenerated file; do not edit manually.
 */
interface IWorld is
  IBaseWorld,
  IBuildSystem,
  ICraftSystem,
  ILibTerrainSystem,
  IMineSystem,
  IMoveSystem,
  IPerlinSystem,
  IPlayerSystem
{

}
