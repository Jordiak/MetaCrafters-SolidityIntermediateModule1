# Error Handling in Solidity

Solidity assessment that tries to demostrate require, assert, and revert statements.

## Description

This program was created for the purposes of accomplishing the "ETH PROOF: Intermediate EVM Course" Module: Functions and Errors project on Metacrafters. This program has functions a function for trigerring different error types.

## Getting Started

### Executing program

To run this program, you can use Hardhat to utilize javascript code in combination with solidity.

Hardhat can be started in a terminal using the "npx hardhat node" command.

The smart contract can be deployed using the "npx hardhat run scripts/deploy.js" command.

```javascript
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Errors {
    event errorMessage(string message);

    function testErrors(uint _errorCode, uint _input) public {
        //Require
        if (_errorCode == 100) {
            require(
                _input > 10,
                "Require: Enter a number that is greater than 10."
            );
            emit errorMessage("No Error Detected.");
        } else if (_errorCode == 200) {
            if (_input > 10) {
                revert("Revert: Enter a number less than 10.");
            }
            emit errorMessage("No Error Detected.");
        } else if (_errorCode == 300) {
            assert(_input == 10);
            emit errorMessage("No Error Detected.");
        }
    }
}



```

## Authors

Jordan

## License

This project is licensed under the MIT License
