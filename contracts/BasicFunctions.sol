// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract BasicFunctions {
    // View - works with other state variables outside of the function | external works with variables outside the function also
    // Pure - works with variables inside of the function only
    // Retuns - what type
    // Memory - when and how to use it 
    // •   External/public: you can use calldata (cheaper) or memory, and if you omit the location for an external function it defaults to calldata.
    // .   function foo(string calldata s) external { … }
    //
    // •   Internal/private: you must explicitly choose memory.
    // .   function bar(string memory s) internal { … }
    //
    // •   If you declare a dynamic variable type inside the function, you need to say memory
    // .   function baz() public pure {
    //         string memory temp = "hello";
    //         …
    //     }
    //
    // •   State variables live in storage by default. You’ll only use storage explicitly when you want a local reference to a state variable’s array/struct:
    // .   string[] public names;    // names is in storage
    //     function tweak() external {
    //         string[] storage ref = names;  // ref ↔ names in storage
    //         …
    //     }

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


    // update a mapping
    function addCoin(string memory _name, string memory _symbol, uint _supply) external {
        myCoins[msg.sender] = Coin(_name, _symbol, _supply);
    }

    
    // get a coin from myCoin mapping
    function getMyCoin() public view returns (Coin memory) {
        return  myCoins[msg.sender];
    }
}
