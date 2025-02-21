// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract structure {
    struct buku {
        string title;
        string author;
        uint id;
        bool isReady;

    }

    // data buku 1
    buku buku1;

    function tambahbuku() public {
        buku1 = buku("Basic Networking", "Me", 1, true);
    }

    function cekbuku1() public view returns (string memory, string memory, uint, bool){
        return (buku1.title, buku1.author, buku1.id, buku1.isReady);
    }

    // data buku 2
    buku buku2 = buku("Advance Routing", "Just me", 11, false);

    function cekbuku2() public view returns (string memory, string memory){
        return (buku2.title, buku2.author);
    }

    // data buku 3 dengan array
    buku[] public buku3;

    function tambahbuk3(string memory title, string memory author, uint id, bool isReady) public {
        buku3.push(buku(title, author, id, isReady));
    }

    function cekbuku3(uint _index) public view returns (string memory, string memory, uint, bool){
    buku storage book3 = buku3[_index];
    return (book3.title, book3.author, book3.id, book3.isReady);
}





}
