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
