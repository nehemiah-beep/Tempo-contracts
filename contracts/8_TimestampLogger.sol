// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TimestampLogger {
    uint256[] public timestamps;

    function log() public {
        timestamps.push(block.timestamp);
    }

    function getLog(uint256 index) public view returns (uint256) {
        return timestamps[index];
    }

    function totalLogs() public view returns (uint256) {
        return timestamps.length;
    }
}
