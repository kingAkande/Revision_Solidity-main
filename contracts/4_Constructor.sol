// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Constructor{

    uint256 public age = 60;

    // constructor(){
    //     age = 190;
    // }

    constructor(uint c){
        age = c;    //value for "c" will be required b4 you can deploy
    }
    

}




//functions called by solidity by default. THey are executed once
//You can only create one constructor 
// the compiler creates a default constructor if there is no defined one