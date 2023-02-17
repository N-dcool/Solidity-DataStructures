// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.15;

contract TheBlockchainMessenger{
    /*
==>The Blockchain Messenger Implementation

    In this project, you are going to implement a simple messenger functionality in a Smart Contract.
    1. Through the constructor make sure you write the address that deployed the contract to a variable
    2. Create a message-variable of the type string, that only the deployer-address can update
    3. Create a counter, to see how many times the variable was updated.
    */

    uint public changeCounter;
    address public owner;
    string public theMessage;

    constructor(){
        owner = msg.sender;
    }

    function setNewMessage(string memory _newString) public {
        if(owner == msg.sender){
            theMessage = _newString;
            changeCounter++;
        }
    }
}