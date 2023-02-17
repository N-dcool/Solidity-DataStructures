// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.14;

contract ExampleUint{
    /*
    Topic Unsign and sign INTEGER :D.

    You can also use uint16, uint32, uint64 ,....uint(K) and so on and range will be [0, (2^k)-1] respectively.
    ⭐️They have default value 0 if not initialized
    */

    uint256 public myUint;        //range [0, (2^256)-1]    if tried to exceed range it will give error.
    uint8 public myUint8 = 250;    //range[0, (2^8)-1] ie. [0, 255] if tried to exceed range gives error.

    

    int public myInt = -10;        //range [-2^128, +(2^128)-1]  llly like in Java :)

    function setUINT256(uint newUINT) public {
        myUint = newUINT;
    }
    function increamentMyUINT8() public {
        myUint8++;
    }
    function increamentUINT256() public {
        myUint++;
    }
    function decreamentINT() public {
        myInt--;
    }

}