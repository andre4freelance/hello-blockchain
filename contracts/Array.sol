// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract FixArray {
    function getDataAll() public pure returns (uint [5] memory){
        uint[5] memory data = [uint(50),60,70,80,100];
        return data;
    }

    function getData1() public pure returns (uint){
        uint[5] memory data = [uint(50),60,70,80,100];
        return data[1];
    } 
}

contract DynamisArray {
    uint[] data;
    uint[] databaru;

    function getData() public returns(uint[] memory) {
        data = [10,20,30,40]; //inline data

        return data;
    }

    function getDataBaru() public returns(uint[] memory){
        //dynamis arary
        databaru = new uint[](3);
        databaru[0] = 10;
        databaru[1] = 30;
        databaru[2] = 30;

        return (databaru);

    }
}

contract LengthArray {
    uint[7] data;

    function array_example() public payable returns (uint[7] memory){
        data = [uint(10), 20, 30, 40, 50, 60];
        return data;
    }

    function array_length() view  public returns (uint){
        uint x = data.length;
        return x;
    }
}

contract PushArray{
    uint [] array;

    function insert() public returns (uint[] memory ){
        array = [10, 20, 30];

        //push array
        array.push(40);
        array.push(50);

        return array;
    }
}

contract PopArray{
    uint [] array;

    function delete1() public returns (uint[] memory ){
        array = [10, 20, 30];

        //pop  array
        array.pop();

        return array;

    }
}