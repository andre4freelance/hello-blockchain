// File ini sama dengan Contract.sol namun sudah di berikan komentar oleh chatgpt agar mudah di pahami
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Parent contract
contract Parent {
    uint private data;
    uint public info;

    constructor(){
        info = 2;
    }

    function incerement(uint a) private pure returns(uint) {
        return a + 1;
    } 

    function setincerement() public pure returns (uint){
        return incerement(2);
    }

    // Public function untuk update dan mengambil data
    function updateData(uint a) public {
        data = a;
    }

    function getData() public view returns (uint){
        return data;
    }

    // Internal function untuk perhitungan
    function compute(uint a, uint b) internal pure returns (uint){
        return a + b;
    }
}

// External contract
contract External {
    function readData() public returns (uint){
        Parent c = new Parent();
        c.updateData(8);
        return c.getData();
    } 
}

// Child contract dengan input manual untuk `setCompute`
contract Child is Parent {
    uint private result;
    Parent private c;
    
    // Fungsi untuk menginput nilai ke `compute`
    function setCompute(uint a, uint b) public {
        result = compute(a, b);
    }

    // Fungsi untuk mengambil hasil perhitungan
    function getResultCompute() public view returns(uint) {
        return result;
    }

    // Fungsi untuk melihat nilai info di constructor contract Parent
    function getDataInfo() public view returns(uint) {
        return c.info();
    }
}
