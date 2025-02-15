// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract VariableTypes {
    //state variable
    uint sum;

    //local variable
    function tambah(uint num1, uint num2)  public {
        //local
        uint temp = num1 + num2;

        sum = temp;


    }

    function getHasil()public view returns(uint){
        return sum;
    }


}

contract Types { 
    bool public valid = true;

    int32 public angkaku = -32;
    uint public angkamu = 1;

    uint32 public ui_data = 15_02_2025;

    uint8 result;

    function tambah() public {
        result = 3.5 + 1.5 ;

    }

    //bytes
    bytes1 public huruf = "A";

    // string
    string public kalimat = "ini adalah kalimat dengan string";


}

contract EnumSaya {

    enum Jobs {Programer, Analys, Networking, DevOps, QA, Marketing, CustomerService, Helpdesk, OfficeBoy, DataEntry}

    function getEnum() public pure returns (Jobs){
        return Jobs.DataEntry;
    }
}
