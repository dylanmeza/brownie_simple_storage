// SPDX-License-Identifier: MIT

//Always need Solidiity version
pragma solidity >=0.6.0 <0.9.0;

//Contract is key-word similar to a "class"
contract SimpleStorage {
    uint256 favoriteNumber;
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //People public person = People({favoriteNumber: 2, name: "Patrick"});
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    //stores favroite number to variable
    function store(uint256 _favoriteNumber) public returns (uint256) {
        favoriteNumber = _favoriteNumber;
        return _favoriteNumber;
    }

    //retrieve and returns favrotieNumbre variable
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    //Adds name and favorite number as person object to the list of people
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        //or
        //people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
