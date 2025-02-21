// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

//contoh penggunaan data memorry
contract DataMemmory {
    function kalkulasi(uint a, uint b) public pure returns (uint hash){
        return a + b;
    }
}

// perbedaan storage dan memmory
contract location {
    // contoh data di storage
    uint public stateVariable1 = 10;
    uint stateVariable2 = 20;

    function iniFungsi() public returns (uint) {
        //contoh data di memmory
        stateVariable1 = stateVariable2;
        stateVariable2 = 30; //tidak akan dibaca karena di dalam memmory

        return stateVariable1;

    }
}

