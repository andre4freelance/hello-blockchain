// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// mapping address ke id
contract BasicMapping {
    mapping (address => uint) public myMap;

    function set(address _addr, uint _id) public {
        myMap[_addr] = _id;
    }

    function get(address _addr) public view returns(uint){
        return myMap[_addr];
    } 

}


// mapping address dan id beserta statusnya
contract NestedMapping {
    mapping(address=> mapping (uint => bool)) public nested;

    function set(address _addr, uint _id, bool _status) public {
        nested[_addr][_id] = _status;
    }

    function get(address _addr, uint _id) public view returns (bool){
        return nested[_addr][_id];
    }
}

// mapping address dan owner beserta statusnya
contract AddressNameMapping {
    // Mapping dari address ke mapping nama pemilik dan statusnya
    mapping(address => mapping(string => bool)) private ownerStatus;

    // Fungsi untuk menyimpan address dan nama, serta otomatis menyetel status ke true
    function setOwner(address _addr, string memory _name) public {
        ownerStatus[_addr][_name] = true;
    }

    // Fungsi untuk validasi apakah address dan nama pemilik sudah terdaftar
    function validateOwner(address _addr, string memory _name) public view returns (bool) {
        return ownerStatus[_addr][_name];
    }
}