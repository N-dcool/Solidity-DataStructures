// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.14;

contract myContract{
    string public ourString = "Hello World";

    function changeOurString(string memory newString) public {
        ourString = newString;
    }
}