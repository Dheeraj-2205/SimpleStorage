// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EthPiggyBank{

    address public immutable i_owner;
    mapping (address =>uint256) s_balances;
    modifier onlyOwner{
        require(msg.sender == i_owner);
        _;
    }

    constructor() {
        i_owner = msg.sender;
    }

    function deposits () public payable {
        require(msg.value > 0 , "you have not enough money");
        s_balances[msg.sender] += msg.value;
    }

    function withDraw() public onlyOwner{
        uint256 amount = address(this).balance;
        s_balances[msg.sender] = 0;
        (bool success,) = payable(msg.sender).call{value:amount }("");
        require(success, "Transfer failed");
    }

    function getMyBalance () public  view returns(uint256){
        return s_balances[msg.sender];
    }

    function getTotalBalance () public view returns (uint256) {
        return address(this).balance;
    }
}