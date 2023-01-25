// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.14;

contract ExampleWrapAround{
    /*
    Integer Rollover

    ⭐️What are Overflows or Underflows?

    In previous versions of Solidity (prior Solidity 0.8.x) an integer would automatically 
    roll-over to a lower or higher number. If you would decrement 0 by 1 (0-1) on an unsigned 
    integer, the result would not be -1, or an error, the result would simple be: type(uint).max.

    For this example I want to use uint8. In our previous example worked with uint256 and uint8 
    and did not roll over. Uint8 is going from 0 to 2^8 - 1. In other words: uint8 ranges from 0 to 255. 
    If you increment 255 it will automatically be 0, if you decrement 0, it will become 255 if the operation 
    is unchecked. No warnings, no errors. For example, this can become problematic, if you store a token-balance 
    in a variable and decrement it without checking.

    */

    uint256 public myUint;        
    uint8 public myUint8 = 250;

    function setUINT256(uint newUINT) public {
        myUint = newUINT;
    }
    function increamentMyUINT8() public {
        unchecked{
            myUint8++;
        }
        
    }
    function decreamentUINT256() public {
        unchecked{
            myUint--;
        }
        
    }

}