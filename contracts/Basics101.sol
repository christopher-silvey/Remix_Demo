// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Basics101 {
    // external can only be called externally
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
    uint timeNowOneSecond = 1 seconds;
    uint timeNowOneMinute = 1 minutes;
    uint timeNowOneHour = 1 hours;
    uint public timeNowOneDay = 1 days;
    uint timeNowOneWeek = 1 weeks;

    // Structs
    struct User {
        address userAddress;
        string name;
        bool hasTraded;
    }

    // Store a Struct in an Array
    User[] public users;

    // Mappings
    mapping (string => string) public accountNameMap;

    // Mapping & Structs Nested
    mapping (address => mapping (string => User)) private userNestedMap;

    // Enums | Think of them as custom types for things that only have a handful of states.
    // Under the hood an enum is just a small uint8 (or larger if you have >256 entries),
    // so storing and comparing them is cheaper than strings or mappings.
    enum coinRanking {STRONG, CAUTION, DODGY}
    coinRanking trustLevel;
    coinRanking public defaultTrustLevel = coinRanking.CAUTION;
}