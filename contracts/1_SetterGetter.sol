// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SetGet {

    uint256 name;
    bool status;

    function steName(uint a, bool b)public {
        name = a;
        status = b;
    }

    function getName() public view returns (uint , bool){
        return(name , status);
    }

    function tobpure() public pure returns(uint){
        uint age;
        age = 5;
        return age;
    }

    // string name;

    // function setName(string memory c)public {
    //         name = c;
    // }

    // function getName() public view returns (string memory){
    //         return name;
    // }
    
}


    // setting a function to change the state variables cost gass  
    // if the value of the state variable is beign changed, neither "PURE" nor "VIEW" will be used
    // when u read from the state variable the "VIEW" key word is used
    // when you are neither reading nor writting to the state variable the "PURE" key word is used
    // you use "PURE" for anything that has to do with local variable 