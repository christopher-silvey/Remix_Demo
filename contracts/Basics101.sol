// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Basics101Test {
    uint public myBalance = 50; // positive numbers only | can be called publicly
    int private transactionAmount = -2; // can contain negative numbers | can only be called by the contract
    string internal coinName = "Epic Coin"; // only be called by the contract and/or by other contracts within it
    bool isValid = true;

    // Global variables
    uint public blockTime = block.timestamp;
    address public sender = msg.sender;

    // Arrays
    string[] public tokenNames = ["Ethereum", "Solana", "Chainlink"];
    uint[5] levels = [0, 1, 2, 3, 4];

    // Datetime
    
}