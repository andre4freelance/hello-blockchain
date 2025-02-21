// mapping address dan id beserta statu// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Public contract dengan parent
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

    //public
    function updateData(uint a) public {
        data = a;
    }
    function getData() public view returns (uint){
        return data;
    }
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

// Child contract
contract Child is Parent {
    uint private result;
    Parent private c;

    constructor(){
        c = new Parent();
    }

    function setCompute(uint a, uint b) public {
        result = compute(a, b);
    }
    function getResultCompute() public view returns(uint) {
        return result;
    }

    function getDataInfo() public view returns(uint) {
        return c.info();
    } 
}