// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
🪙 SimpleBank
-------------
A beginner-friendly Solidity project that lets users deposit and withdraw Ether.
It demonstrates:
✅ State variables and mappings
✅ Payable functions
✅ Require checks and balance tracking
✅ Basic user interaction with smart contracts
*/

contract SimpleBank {
    // Mapping to store each user's balance
    mapping(address => uint256) public balances;

    // Deposit Ether into the contract
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        balances[msg.sender] += msg.value;
    }

    // Withdraw Ether from the contract
    function withdraw(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }

    // Check your balance
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
