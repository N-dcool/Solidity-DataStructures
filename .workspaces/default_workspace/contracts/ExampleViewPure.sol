// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.15;

contract ExampleViewPure {

    /*
 ==>Writing, View and Pure Functions
    So far, we have mostly interacted and modified state variables from our Smart Contract. 
    For example, when we write the address, we modify a state variable. When we update an uint variable, we also modify the state.
    For this, we needed to send a transaction. That works very transparently in Remix and also looks instantaneous 
    and completely free of charge, but in reality it isn't. Modifying the State costs gas, is a concurrent operation 
    that requires mining and doesn't return any values.

   ⭐️Reading values, on the other hand, is virtually free and doesn't require mining.
    There are two types of reading functions:
    1. view: Accessing state variables
    2. pure: Not accessing state variables

    1️⃣. Writing Functions:
    As you can see here, a writing function can have return variables, but they won't actually return anything to the 
    transaction initializer. There are several reason for it, but the most prominent one is: at the time of sending 
    the transaction the actual state is unknown. It is possible that someone sends a competing transaction that alters 
    the state and from there it only depends on the transaction ordering - which is something that happens on the miner side. 
    You will see that extensively in the next section.
    ??? What's the return variable for then?
    It's for Smart Contract communication. It is used to return something when a smart contract calls another smart contractfunction.

    2️⃣. View Functions
    A view function is a function that reads from the state but doesn't write to the state.
    A classic view function woule be a getter-function.

    3️⃣. Pure Functions
    A pure function is a function that neither writes, nor reads from state variables. 
    It can only access its own arguments and other pure functions
    */
    uint public myStorageVariable;

    function getStroageVariable() public view returns(uint){
        return myStorageVariable;
    }

    function getAddition(uint a, uint b) public pure returns(uint){
        return a+b;
    }

    function setNewVariable(uint _newVar) public {
        myStorageVariable = _newVar;
    }
}