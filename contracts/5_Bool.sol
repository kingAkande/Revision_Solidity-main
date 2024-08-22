// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract booling{

   function setbool(uint a)public pure returns(bool) {
        if(a%2 == 0){
            return true;
        } else {
            return false;
        }

   }
}