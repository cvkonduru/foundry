// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../HelloWorld.sol";

contract HelloWorldTest is DSTest {
    HelloWorld hello;

    function setUp() public {
        hello = new HelloWorld();
    }

    function testExample() public {
        assertTrue(true);
    }

    function testSayHello() public{
        string memory res = hello.sayHello();
        assertTrue(keccak256(abi.encodePacked(res)) == keccak256(abi.encodePacked("Hello World")));
    }
}
