// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenTracker {
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    constructor(string memory name, string memory symbol, uint256 supply) {
        tokenName = name;
        tokenSymbol = symbol;
        totalSupply = supply;
        balances[msg.sender] = supply;
    }

    function transfer(address to, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address addr) public view returns (uint256) {
        return balances[addr];
    }
}
