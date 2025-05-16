// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract myEpicCoin {
    uint availableSupply;
    uint maxSupply;

    constructor(uint _startingSupply, uint _maxSupply) {
        availableSupply = _startingSupply;
        maxSupply = _maxSupply;
    }
}

contract MyEpicToken is myEpicCoin { // is | is used to inherit another contract
    constructor(uint ss, uint ms) myEpicCoin (ss, ms) {}

    function getAvailableSupply() public view returns (uint) {
        return availableSupply;
    }

    function getMaxSupply() public view returns (uint) {
        return maxSupply;
    }
}