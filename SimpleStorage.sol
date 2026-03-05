// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;



contract SimpleStorage{
    struct Person{
        string name;
        uint256 favouriteNumber;
    }
    struct Animals{
        string name;
        string species;
    }

    Person[] public people;
    Animals[] public  animals;

    mapping (string => uint256) public nameToFavouriteNumber;

    constructor(){
        animals.push(Animals("billu kaatebazz" , "doggy"));
        animals.push(Animals("ramesh hatayaara" , "cat"));
        animals.push(Animals("dhobi lattbaaz" , "crow"));
    }

    function addAnimals (string memory _name , string memory _species) public {
        animals.push(Animals(_name , _species));
    }

    function addPerson (string memory _name, uint256 _favouriteNumber) public {
        people.push(Person(_name , _favouriteNumber));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    function animalsCount() public view returns  (uint256){
        return animals.length;
    }
}