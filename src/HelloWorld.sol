//SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract HelloWorld {
    
    function sayHello() external pure returns(string memory) {
        return "Hello World";
    }
}