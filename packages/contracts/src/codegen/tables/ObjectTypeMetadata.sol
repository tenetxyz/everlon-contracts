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
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

struct ObjectTypeMetadataData {
  bool isPlayer;
  bool isBlock;
  uint16 mass;
  uint8 stackable;
  uint16 damage;
  uint24 durability;
  uint16 hardness;
  address occurenceAddress;
  bytes4 occurenceSelector;
}

library ObjectTypeMetadata {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "", name: "ObjectTypeMetada", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x746200000000000000000000000000004f626a656374547970654d6574616461);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0024090001010201020302140400000000000000000000000000000000000000);

  // Hex-encoded key schema of (bytes32)
  Schema constant _keySchema = Schema.wrap(0x002001005f000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (bool, bool, uint16, uint8, uint16, uint24, uint16, address, bytes4)
  Schema constant _valueSchema = Schema.wrap(0x0024090060600100010201614300000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "objectTypeId";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](9);
    fieldNames[0] = "isPlayer";
    fieldNames[1] = "isBlock";
    fieldNames[2] = "mass";
    fieldNames[3] = "stackable";
    fieldNames[4] = "damage";
    fieldNames[5] = "durability";
    fieldNames[6] = "hardness";
    fieldNames[7] = "occurenceAddress";
    fieldNames[8] = "occurenceSelector";
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
   * @notice Get isPlayer.
   */
  function getIsPlayer(bytes32 objectTypeId) internal view returns (bool isPlayer) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Get isPlayer.
   */
  function _getIsPlayer(bytes32 objectTypeId) internal view returns (bool isPlayer) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Set isPlayer.
   */
  function setIsPlayer(bytes32 objectTypeId, bool isPlayer) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((isPlayer)), _fieldLayout);
  }

  /**
   * @notice Set isPlayer.
   */
  function _setIsPlayer(bytes32 objectTypeId, bool isPlayer) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((isPlayer)), _fieldLayout);
  }

  /**
   * @notice Get isBlock.
   */
  function getIsBlock(bytes32 objectTypeId) internal view returns (bool isBlock) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Get isBlock.
   */
  function _getIsBlock(bytes32 objectTypeId) internal view returns (bool isBlock) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Set isBlock.
   */
  function setIsBlock(bytes32 objectTypeId, bool isBlock) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((isBlock)), _fieldLayout);
  }

  /**
   * @notice Set isBlock.
   */
  function _setIsBlock(bytes32 objectTypeId, bool isBlock) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((isBlock)), _fieldLayout);
  }

  /**
   * @notice Get mass.
   */
  function getMass(bytes32 objectTypeId) internal view returns (uint16 mass) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (uint16(bytes2(_blob)));
  }

  /**
   * @notice Get mass.
   */
  function _getMass(bytes32 objectTypeId) internal view returns (uint16 mass) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (uint16(bytes2(_blob)));
  }

  /**
   * @notice Set mass.
   */
  function setMass(bytes32 objectTypeId, uint16 mass) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((mass)), _fieldLayout);
  }

  /**
   * @notice Set mass.
   */
  function _setMass(bytes32 objectTypeId, uint16 mass) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((mass)), _fieldLayout);
  }

  /**
   * @notice Get stackable.
   */
  function getStackable(bytes32 objectTypeId) internal view returns (uint8 stackable) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (uint8(bytes1(_blob)));
  }

  /**
   * @notice Get stackable.
   */
  function _getStackable(bytes32 objectTypeId) internal view returns (uint8 stackable) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (uint8(bytes1(_blob)));
  }

  /**
   * @notice Set stackable.
   */
  function setStackable(bytes32 objectTypeId, uint8 stackable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((stackable)), _fieldLayout);
  }

  /**
   * @notice Set stackable.
   */
  function _setStackable(bytes32 objectTypeId, uint8 stackable) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((stackable)), _fieldLayout);
  }

  /**
   * @notice Get damage.
   */
  function getDamage(bytes32 objectTypeId) internal view returns (uint16 damage) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (uint16(bytes2(_blob)));
  }

  /**
   * @notice Get damage.
   */
  function _getDamage(bytes32 objectTypeId) internal view returns (uint16 damage) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (uint16(bytes2(_blob)));
  }

  /**
   * @notice Set damage.
   */
  function setDamage(bytes32 objectTypeId, uint16 damage) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((damage)), _fieldLayout);
  }

  /**
   * @notice Set damage.
   */
  function _setDamage(bytes32 objectTypeId, uint16 damage) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((damage)), _fieldLayout);
  }

  /**
   * @notice Get durability.
   */
  function getDurability(bytes32 objectTypeId) internal view returns (uint24 durability) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return (uint24(bytes3(_blob)));
  }

  /**
   * @notice Get durability.
   */
  function _getDurability(bytes32 objectTypeId) internal view returns (uint24 durability) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return (uint24(bytes3(_blob)));
  }

  /**
   * @notice Set durability.
   */
  function setDurability(bytes32 objectTypeId, uint24 durability) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((durability)), _fieldLayout);
  }

  /**
   * @notice Set durability.
   */
  function _setDurability(bytes32 objectTypeId, uint24 durability) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setStaticField(_tableId, _keyTuple, 5, abi.encodePacked((durability)), _fieldLayout);
  }

  /**
   * @notice Get hardness.
   */
  function getHardness(bytes32 objectTypeId) internal view returns (uint16 hardness) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 6, _fieldLayout);
    return (uint16(bytes2(_blob)));
  }

  /**
   * @notice Get hardness.
   */
  function _getHardness(bytes32 objectTypeId) internal view returns (uint16 hardness) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 6, _fieldLayout);
    return (uint16(bytes2(_blob)));
  }

  /**
   * @notice Set hardness.
   */
  function setHardness(bytes32 objectTypeId, uint16 hardness) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 6, abi.encodePacked((hardness)), _fieldLayout);
  }

  /**
   * @notice Set hardness.
   */
  function _setHardness(bytes32 objectTypeId, uint16 hardness) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setStaticField(_tableId, _keyTuple, 6, abi.encodePacked((hardness)), _fieldLayout);
  }

  /**
   * @notice Get occurenceAddress.
   */
  function getOccurenceAddress(bytes32 objectTypeId) internal view returns (address occurenceAddress) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 7, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /**
   * @notice Get occurenceAddress.
   */
  function _getOccurenceAddress(bytes32 objectTypeId) internal view returns (address occurenceAddress) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 7, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /**
   * @notice Set occurenceAddress.
   */
  function setOccurenceAddress(bytes32 objectTypeId, address occurenceAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 7, abi.encodePacked((occurenceAddress)), _fieldLayout);
  }

  /**
   * @notice Set occurenceAddress.
   */
  function _setOccurenceAddress(bytes32 objectTypeId, address occurenceAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setStaticField(_tableId, _keyTuple, 7, abi.encodePacked((occurenceAddress)), _fieldLayout);
  }

  /**
   * @notice Get occurenceSelector.
   */
  function getOccurenceSelector(bytes32 objectTypeId) internal view returns (bytes4 occurenceSelector) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 8, _fieldLayout);
    return (bytes4(_blob));
  }

  /**
   * @notice Get occurenceSelector.
   */
  function _getOccurenceSelector(bytes32 objectTypeId) internal view returns (bytes4 occurenceSelector) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 8, _fieldLayout);
    return (bytes4(_blob));
  }

  /**
   * @notice Set occurenceSelector.
   */
  function setOccurenceSelector(bytes32 objectTypeId, bytes4 occurenceSelector) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setStaticField(_tableId, _keyTuple, 8, abi.encodePacked((occurenceSelector)), _fieldLayout);
  }

  /**
   * @notice Set occurenceSelector.
   */
  function _setOccurenceSelector(bytes32 objectTypeId, bytes4 occurenceSelector) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setStaticField(_tableId, _keyTuple, 8, abi.encodePacked((occurenceSelector)), _fieldLayout);
  }

  /**
   * @notice Get the full data.
   */
  function get(bytes32 objectTypeId) internal view returns (ObjectTypeMetadataData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data.
   */
  function _get(bytes32 objectTypeId) internal view returns (ObjectTypeMetadataData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(
    bytes32 objectTypeId,
    bool isPlayer,
    bool isBlock,
    uint16 mass,
    uint8 stackable,
    uint16 damage,
    uint24 durability,
    uint16 hardness,
    address occurenceAddress,
    bytes4 occurenceSelector
  ) internal {
    bytes memory _staticData = encodeStatic(
      isPlayer,
      isBlock,
      mass,
      stackable,
      damage,
      durability,
      hardness,
      occurenceAddress,
      occurenceSelector
    );

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(
    bytes32 objectTypeId,
    bool isPlayer,
    bool isBlock,
    uint16 mass,
    uint8 stackable,
    uint16 damage,
    uint24 durability,
    uint16 hardness,
    address occurenceAddress,
    bytes4 occurenceSelector
  ) internal {
    bytes memory _staticData = encodeStatic(
      isPlayer,
      isBlock,
      mass,
      stackable,
      damage,
      durability,
      hardness,
      occurenceAddress,
      occurenceSelector
    );

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(bytes32 objectTypeId, ObjectTypeMetadataData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.isPlayer,
      _table.isBlock,
      _table.mass,
      _table.stackable,
      _table.damage,
      _table.durability,
      _table.hardness,
      _table.occurenceAddress,
      _table.occurenceSelector
    );

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(bytes32 objectTypeId, ObjectTypeMetadataData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.isPlayer,
      _table.isBlock,
      _table.mass,
      _table.stackable,
      _table.damage,
      _table.durability,
      _table.hardness,
      _table.occurenceAddress,
      _table.occurenceSelector
    );

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(
    bytes memory _blob
  )
    internal
    pure
    returns (
      bool isPlayer,
      bool isBlock,
      uint16 mass,
      uint8 stackable,
      uint16 damage,
      uint24 durability,
      uint16 hardness,
      address occurenceAddress,
      bytes4 occurenceSelector
    )
  {
    isPlayer = (_toBool(uint8(Bytes.getBytes1(_blob, 0))));

    isBlock = (_toBool(uint8(Bytes.getBytes1(_blob, 1))));

    mass = (uint16(Bytes.getBytes2(_blob, 2)));

    stackable = (uint8(Bytes.getBytes1(_blob, 4)));

    damage = (uint16(Bytes.getBytes2(_blob, 5)));

    durability = (uint24(Bytes.getBytes3(_blob, 7)));

    hardness = (uint16(Bytes.getBytes2(_blob, 10)));

    occurenceAddress = (address(Bytes.getBytes20(_blob, 12)));

    occurenceSelector = (Bytes.getBytes4(_blob, 32));
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   *
   *
   */
  function decode(
    bytes memory _staticData,
    PackedCounter,
    bytes memory
  ) internal pure returns (ObjectTypeMetadataData memory _table) {
    (
      _table.isPlayer,
      _table.isBlock,
      _table.mass,
      _table.stackable,
      _table.damage,
      _table.durability,
      _table.hardness,
      _table.occurenceAddress,
      _table.occurenceSelector
    ) = decodeStatic(_staticData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(bytes32 objectTypeId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(bytes32 objectTypeId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(
    bool isPlayer,
    bool isBlock,
    uint16 mass,
    uint8 stackable,
    uint16 damage,
    uint24 durability,
    uint16 hardness,
    address occurenceAddress,
    bytes4 occurenceSelector
  ) internal pure returns (bytes memory) {
    return
      abi.encodePacked(
        isPlayer,
        isBlock,
        mass,
        stackable,
        damage,
        durability,
        hardness,
        occurenceAddress,
        occurenceSelector
      );
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(
    bool isPlayer,
    bool isBlock,
    uint16 mass,
    uint8 stackable,
    uint16 damage,
    uint24 durability,
    uint16 hardness,
    address occurenceAddress,
    bytes4 occurenceSelector
  ) internal pure returns (bytes memory, PackedCounter, bytes memory) {
    bytes memory _staticData = encodeStatic(
      isPlayer,
      isBlock,
      mass,
      stackable,
      damage,
      durability,
      hardness,
      occurenceAddress,
      occurenceSelector
    );

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(bytes32 objectTypeId) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = objectTypeId;

    return _keyTuple;
  }
}

/**
 * @notice Cast a value to a bool.
 * @dev Boolean values are encoded as uint8 (1 = true, 0 = false), but Solidity doesn't allow casting between uint8 and bool.
 * @param value The uint8 value to convert.
 * @return result The boolean value.
 */
function _toBool(uint8 value) pure returns (bool result) {
  assembly {
    result := value
  }
}
