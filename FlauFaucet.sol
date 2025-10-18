// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    // State variable to store the greeting message
    string public greeting;

    // Constructor runs once at deployment
    constructor(string memory _greeting) {
        greeting = _greeting;
    }

    // Function to update the greeting message
    function setGreeting(string memory _newGreeting) public {
        greeting = _newGreeting;
    }

    // Function to return the greeting message
    function getGreeting() public view returns (string memory) {
        return greeting;
    }
}
