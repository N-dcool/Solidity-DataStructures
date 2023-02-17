// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.15;

contract ExampleAddress {
    /*
    Address Types

    One type, which is very specific to Ethereum and Solidity, is the type "address".
    Ethereum supports transfer of Ether and communication between Smart Contracts.
     Those reside on an address. Addresses can be stored in Smart Contracts and can be used 
     to transfer Ether from the Smart Contract to to an address stored in a variable.
    That's where variables of the type address come in.

    In general, a variable of the type address holds 20 bytes. That's all that happens internally. 
    Let's see what we can do with Solidity and addresses.

    Your balance will be very similar to the one in the picture above, probably around 99.999999-some Ether. 
    Why not 100 Ether, or where do the Ether come from? The JavaScript VM is a 
    simulated environment that will "give" you 100 Ether to play. Every transaction costs a little bit of Ether 
    in Gas-Costs, which we will cover later.
    */

    address public myAddress;

    function setSomeAddress(address _newAddress) public {
        myAddress = _newAddress;
    }

    function getBalance() public view returns(uint) {
        return myAddress.balance;
    }
}
