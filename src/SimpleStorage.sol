//SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract SimpleStorage {

    string  data;

    function setData(string memory _data) external {
        data = _data;
    }

    function getData() external view returns(string memory) {
        return data;
    }
}