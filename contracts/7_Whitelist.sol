// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {
    mapping(address => bool) public whitelisted;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function addToWhitelist(address addr) public {
        require(msg.sender == owner, "Not owner");
        whitelisted[addr] = true;
    }

    function removeFromWhitelist(address addr) public {
        require(msg.sender == owner, "Not owner");
        whitelisted[addr] = false;
    }

    function isWhitelisted(address addr) public view returns (bool) {
        return whitelisted[addr];
    }
}
