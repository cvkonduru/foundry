//SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract ComplexStorage {
    uint256[] ids; 

    function setID(uint256 id) external {
        ids.push(id);
    }

    function getIDAtPosition(uint256 position) external view returns(uint256) {
        return ids[position];
    }

    function getAll() external view returns(uint256[] memory) {
        return ids;
    }

    function getIDCount() external view returns(uint256) {
        return ids.length;
    }
}