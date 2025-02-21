// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// kode ini dibuat agar saya bisa paham struct buku3 di file struct.sol

contract BookContract {
    struct Buku {
        string title;
        string author;
        uint id;
        bool isReady;
    }

    Buku[] public buku3;

    function newBook(string memory title, string memory author, uint id, bool isReady) public {
        buku3.push(Buku(title, author, id, isReady));
    }

    function cekbuku3(uint _index) public view returns (string memory, string memory, uint, bool) {
        require(_index < buku3.length, "Index out of range");
        Buku storage book3 = buku3[_index];
        return (book3.title, book3.author, book3.id, book3.isReady);
    }

    function getTotalBooks() public view returns (uint) {
        return buku3.length;
    }
}
