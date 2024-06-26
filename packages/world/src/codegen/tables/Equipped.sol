// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

library Equipped {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "", name: "Equipped", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x7462000000000000000000000000000045717569707065640000000000000000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0020010020000000000000000000000000000000000000000000000000000000);

  // Hex-encoded key schema of (bytes32)
  Schema constant _keySchema = Schema.wrap(0x002001005f000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (bytes32)
  Schema constant _valueSchema = Schema.wrap(0x002001005f000000000000000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "ownerEntityId";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](1);
    fieldNames[0] = "toolEntityId";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config (using the specified store).
   */
  function register(IStore _store) internal {
    _store.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get toolEntityId.
   */
  function getToolEntityId(bytes32 ownerEntityId) internal view returns (bytes32 toolEntityId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Get toolEntityId.
   */
  function _getToolEntityId(bytes32 ownerEntityId) internal view returns (bytes32 toolEntityId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Get toolEntityId (using the specified store).
   */
  function getToolEntityId(IStore _store, bytes32 ownerEntityId) internal view returns (bytes32 toolEntityId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Get toolEntityId.
   */
  function get(bytes32 ownerEntityId) internal view returns (bytes32 toolEntityId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Get toolEntityId.
   */
  function _get(bytes32 ownerEntityId) internal view returns (bytes32 toolEntityId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Get toolEntityId (using the specified store).
   */
  function get(IStore _store, bytes32 ownerEntityId) internal view returns (bytes32 toolEntityId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /**
   * @notice Set toolEntityId.
   */
  function setToolEntityId(bytes32 ownerEntityId, bytes32 toolEntityId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((toolEntityId)), _fieldLayout);
  }

  /**
   * @notice Set toolEntityId.
   */
  function _setToolEntityId(bytes32 ownerEntityId, bytes32 toolEntityId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((toolEntityId)), _fieldLayout);
  }

  /**
   * @notice Set toolEntityId (using the specified store).
   */
  function setToolEntityId(IStore _store, bytes32 ownerEntityId, bytes32 toolEntityId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    _store.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((toolEntityId)), _fieldLayout);
  }

  /**
   * @notice Set toolEntityId.
   */
  function set(bytes32 ownerEntityId, bytes32 toolEntityId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((toolEntityId)), _fieldLayout);
  }

  /**
   * @notice Set toolEntityId.
   */
  function _set(bytes32 ownerEntityId, bytes32 toolEntityId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((toolEntityId)), _fieldLayout);
  }

  /**
   * @notice Set toolEntityId (using the specified store).
   */
  function set(IStore _store, bytes32 ownerEntityId, bytes32 toolEntityId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    _store.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((toolEntityId)), _fieldLayout);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(bytes32 ownerEntityId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(bytes32 ownerEntityId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Delete all data for given keys (using the specified store).
   */
  function deleteRecord(IStore _store, bytes32 ownerEntityId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    _store.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(bytes32 toolEntityId) internal pure returns (bytes memory) {
    return abi.encodePacked(toolEntityId);
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(bytes32 toolEntityId) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(toolEntityId);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(bytes32 ownerEntityId) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = ownerEntityId;

    return _keyTuple;
  }
}
