// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {
    struct Task {
        string content;
        bool completed;
    }

    Task[] public tasks;

    function addTask(string memory content) public {
        tasks.push(Task(content, false));
    }

    function completeTask(uint256 index) public {
        tasks[index].completed = true;
    }

    function getTask(uint256 index) public view returns (string memory, bool) {
        return (tasks[index].content, tasks[index].completed);
    }
}
