// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.15;

contract ExampleConstructor {

    /*
 ==>The Solidity Constructor
    constructor(): is a special function that is called only once during contract deployment. 
    It can have arguments, like here. But it also has the same global objects available as in any other transaction. 
    So in msg.sender is the address of the person who deployed the Smart Contract, which you can use.
    */
    address public myAddress;

    constructor(address _someAddress){
        myAddress = _someAddress;
    }

    function setMyAddressToNewAddress(address _newAddress) public {
        myAddress = _newAddress;
    }

    function setMyAddressToMsgSender() public {
        myAddress = msg.sender;
    }

}