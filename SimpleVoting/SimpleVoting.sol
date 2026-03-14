// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleVoting{
    address immutable i_owner;
    struct Candidate{
        string name;
        uint256 voteCount;
    }

    Candidate[] public  candidate;
    mapping (address => bool) public hasVoted;
    bool public isVoting;


    constructor(){
        i_owner = msg.sender;
        isVoting = true;
    }

    modifier OnlyOwner (){
        require(msg.sender == i_owner, "Only owner can call this function");
        _;
    }

    modifier CheckVoting (){
        require(isVoting == true , "voting is closed");
        require(!hasVoted[msg.sender] , "already voted");
        _; 
    }

    function addCandidate (string memory _name) public OnlyOwner {
        candidate.push(Candidate({name : _name , voteCount : 0}));
    }

    function vote(uint256 _candidateIndex) public CheckVoting {
        require(candidate.length > _candidateIndex , "invalid candidate");
        hasVoted[msg.sender] = true;
        candidate[_candidateIndex].voteCount++;
    }

    function endVoting () public  OnlyOwner{
        isVoting = false;
    }

    function getCandidate (uint256 _index) public view returns(string memory , uint256) {
        require(_index < candidate.length, "invalid index" );
        return (candidate[_index].name , candidate[_index].voteCount);
    }

}