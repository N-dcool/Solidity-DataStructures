// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.15;

contract ExampleString{
    /*
    ==>Strings and Bytes

        Strings are actually Arrays, very similar to a bytes-array. 
        If that sounds too complicated, let me break down some quirks for you that are somewhat unique to Solidity:

        1. Natively, there are no String manipulation functions.
        2. No even string comparison is natively possible
        3. There are libraries to work with Strings
        4. Strings are expensive to store and work with in Solidity (Gas costs, we talk about them later)
        5. As a rule of thumb: try to avoid storing Strings, use Events instead (more on that later as well!)

    ==>Comparing two Strings
        There are no native string comparison functions in Solidity. 
        There is still a way to compare two strings: by comparing their keccak256 hashes.  

    ==>Strings vs Bytes
        Strings are actually arbitrary long bytes in UTF-8 representation. 
        Strings do not have a length property, bytes do have that. 
        Let's run an example and add a bytes variable with the same "Hello World".  

    ⭐️eg:
        If you run this, you get the length of "Hello World", which is 11. 
        Try to run the same with a non latin-1 character, like an ö.

        If you run this, you get a length of 12, although its just 11 characters. 
        The character "ö" needs 2 bytes.


    */
     
    string public myString = "Hello World";
    bytes public myBytes = "Hello World";

    function setMyString(string memory _newString) public {
        myString = _newString;
    }

    function comapareString(string memory _refString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_refString));
    }

}