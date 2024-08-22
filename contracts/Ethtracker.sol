// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherTracker {
    // Mapping to track the balance of each sender
    mapping(address => uint) public balances;

    // Event to log each deposit
    event Deposit(address indexed sender, uint amount);

    // Function to receive Ether and update the sender's balance
    function deposit() public payable {
        // Update the sender's balance with the amount of Ether sent
        balances[msg.sender] += msg.value;

        // Emit the deposit event
        emit Deposit(msg.sender, msg.value);
    }

    // Function to check the balance of a specific address
    function getBalance(address user) public view returns (uint) {
        return balances[user];
    }

    // Function to withdraw Ether from the contract
    function withdraw(uint amount) public {
        // Ensure the sender has enough balance to withdraw
        require(balances[msg.sender] >= amount, "Insufficient balance");

        // Deduct the amount from the sender's balance
        balances[msg.sender] -= amount;

        // Transfer the Ether back to the sender
        payable(msg.sender).transfer(amount);
    }

    // Fallback function to handle direct Ether transfers
    receive() external payable {
        deposit();
    }
}
