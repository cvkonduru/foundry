// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../ComplexStorage.sol";

contract ComplexStorageTest is DSTest {
    ComplexStorage store;

    function setUp() public {
        store = new ComplexStorage();
    }

    function testInitGetIDCount() public {
        uint256 res = store.getIDCount();
        assertTrue(res == 0);
    }

    function testInitGetAll() public {
        uint256[] memory res = store.getAll();
        uint256[] memory emptyArray;
        assertTrue(keccak256(abi.encodePacked(res)) == keccak256(abi.encodePacked(emptyArray)));
    }

    function testSetID() public {
        uint256 ID = 10;
        uint256 position = 0;
        store.setID(ID);
        uint256 res = store.getIDAtPosition(position);
        uint256 len = store.getIDCount();
        uint256[] memory all = store.getAll();
        uint256[1] memory myArray = [ID];
        assertTrue(keccak256(abi.encodePacked(all)) == keccak256(abi.encodePacked(myArray)));
        assertTrue(res == 10);
        assertTrue(len == 1);
    }

}
