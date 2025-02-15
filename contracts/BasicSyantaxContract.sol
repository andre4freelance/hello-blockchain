// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;

contract BasicSyntaxContract {
    uint storedData;


    //Melakukan set data
    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}