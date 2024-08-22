// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract statevariable {

    // uint num = 34;
     uint public  num = 34;  //making it public 

//using a constructor to innitiallise a state variable

    bool public status;
    constructor(){
        status = false;
    }

    //using a function to innitiallise a state variable
    address public owner;

    function setter() public{
        owner = msg.sender;
    }


    //State variables are variables that are not within a function
    //state variables requires huge amount of gas,
    //They are stored permanently on the block chain
    //Reading from the state variable is free but writting to it is costly.

}