// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract NameStorage{

    address immutable i_owner;


    mapping (address => string) public nameMapping;

    constructor(){
        i_owner = msg.sender;
    }


    function setName(address _adr , string memory _strName) public {
        require(i_owner == msg.sender , "Your are not owner");
        nameMapping[_adr] = _strName;
    }

    function getName(address _adr) public view returns  ( string memory) {
        return nameMapping[_adr];
    }
}