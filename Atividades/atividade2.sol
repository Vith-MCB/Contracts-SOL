// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract StorageInArray {
    //Set program variables
    address private owner;
    uint nftNumber;
    
    constructor() {
        owner = msg.sender;
        nftNumber = 0;
    }

    //Struct of the NFT that contains the info
    struct NFTinfo {
      string name;
      uint id;
    }

   //Set  values and name

    mapping(uint => NFTinfo) private nftArray;

    //modifier used to check if message sender is owner
    modifier isOwner() {
        require(msg.sender == owner, unicode"You don't have permission!");
        _;
    }

    //Set information to the array
    function setNFTinfo(string memory inputName) isOwner public {
        nftArray[nftNumber].name = inputName;
        nftArray[nftNumber].id = nftNumber;

        nftNumber += 1;
    }

    //Function used to get the NFT at the position informed
    function getNFT(uint indexSearch) public view returns(NFTinfo memory){
        return nftArray[indexSearch];
    }

}