// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract PrintAddressContractor1{
    
    address public caller;

    function getCallerAddress() public returns (address) {
        caller = msg.sender;

        //caller adalah address yang di deploy
        return caller;
    }
}

contract PrintAddressContractor2 {
    function getCallerAddress() public view returns (address caller){
        caller = msg.sender;
    }
}

//untuk cek address smart contract
contract PrintMyAddress {
    function getAddress() public view returns(address){
        address myAddress = address(this);
        return myAddress;
    }
}

//untuk transaksi
contract Transaksi {
    uint receivedAmount;

    //untuk menerima dan mencatat informasi penerimaan ether
    function receiveEther() payable public {
        receivedAmount = msg.value;
    }

    //untuk cek jumlah penerimaan ether
    function getReceivedAmount() public view returns (uint) {
        return receivedAmount;
    }

    //transnfer dengan metode transfer
    function transferFund(address payable _address, uint nominal) public {
        _address.transfer(nominal);
    }

    //transfer dengan metode send
    function sendFund(address payable _address, uint nominal) public returns(bool){
        _address.send(nominal);
    }

    
}