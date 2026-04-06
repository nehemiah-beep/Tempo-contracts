// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NameRegistry {
    mapping(address => string) private names;

    function registerName(string memory name) public {
        names[msg.sender] = name;
    }

    function getName(address addr) public view returns (string memory) {
        return names[addr];
    }
}
