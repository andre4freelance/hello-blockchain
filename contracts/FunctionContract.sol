// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {

    uint hasil;

    function printHello() public pure returns (string memory){
        return 'Hello Word';
    }

    function tambah(uint a, uint b) public {
        //local
        uint temp = a + b;

        hasil = temp;
    }

    function getHasil() public view returns(uint) {
        return hasil;
    }
}


contract PayableContract {
    uint receivedAmount;

    //untuk menerima dan mencatat informasi penerimaan ether
    function receiveEther() payable public {
        receivedAmount = msg.value;
    }

    //untuk cek jumlah penerimaan ether
    function getReceivedAmount() public view returns (uint) {
        return receivedAmount;
    }

    //untuk cek jumlah keseluruhan eter di contract
    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }

}

contract Tambahan {
    //overload
    function tambah(uint a, uint b) public pure returns(uint hasil){
        hasil = a + b;
    }

    function tambah(uint a, uint b, uint c) public pure returns(uint hasil){
        hasil = a + b + c;    
    }

}