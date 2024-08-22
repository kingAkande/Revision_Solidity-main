// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract requiring{





    modifier check(uint q){

        require(q%2 == 0, "not correct");
        _;
    }

    function checking(uint q)public pure check(q) returns(bool){
        
     return true;
    } -

    //using "if" and "revert" statement

    function alternative(uint z)public pure returns(bool){
        if(z%4 != 0){
            return true;
        }
            revert("not");
    
    }


}