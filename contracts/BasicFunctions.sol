// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract BasicFunctions {
    // View - works with other state variables outside of the function | external works with variables outside the function also
    // Pure - works with variables inside of the function only
    // Retuns - what type
    // Memory - Strings pretty much always uses memory

    string coinName = "Epic Coin";
    uint public myBalance = 1000;

    struct Coin {
        string name;
        string symbol;
        uint256 supply;
    }

    mapping(address => Coin) internal myCoins;


    function guessNumber(uint256 _guess) public pure returns (bool) {
        if (_guess == 5) {
            return true;
        } else {
            return false;
        }
    }


    // returns a string (coinName variable)
    function getMyCoinName() public view returns (string memory) {
        return coinName;
    }


    // external can only be called externally
    function multiplyBalance(uint _multiplier) external {
        myBalance = myBalance * _multiplier;
    }


    // uses a for loop and iterates through a param and uses string comparison
    function findCoinIndex(string[] memory _myCoins, string memory _find, uint _startFrom) public pure returns (uint) {
        for (uint i = _startFrom; i < _myCoins.length; i++) {
            string memory coin = _myCoins[i];

            // when compairing strings you have to use keccak256 wrapped in abi.encodePacked in order to do the comparison
            if (keccak256(abi.encodePacked(coin)) == keccak256(abi.encodePacked(_find))) {
                return i;
            }
        }

        return 9999;
    }
}
