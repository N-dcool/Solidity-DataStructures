// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.14;

contract ExampleBool{
    bool public ourFlag;

    function changeFlag(bool newFlag) public {
        ourFlag = newFlag;
    }
    function toggleFlag() public {
        ourFlag = !ourFlag;
    }
}