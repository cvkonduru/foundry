// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../SimpleStorage.sol";

contract SimpleStorageTest is DSTest {
    SimpleStorage store;

    function setUp() public {
        store = new SimpleStorage();
    }

    function testGetData() public {
        string memory res = store.getData();
        assertTrue(keccak256(abi.encodePacked(res)) == keccak256(abi.encodePacked("")));
    }

    function testSetData() public {
        string memory data = "Chay";
        store.setData(data);
        string memory res = store.getData();
        assertTrue(keccak256(abi.encodePacked(res)) == keccak256(abi.encodePacked(data)));
    }

}
