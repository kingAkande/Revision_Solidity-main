// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract localvariable {
  
  function localVariable() public pure returns(uint){
    uint  a;
    uint b;
     return a+b;
  }
   

}

// local variables are variables within/inside a function
// They are not permanently stored on the blockchain, they are stored on the stack
//Reading and writing to them cost no gas