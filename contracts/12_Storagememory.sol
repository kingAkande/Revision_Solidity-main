// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract Storingconcept{

uint[5] public arr = [12,45,76,23,50];              //an array created at the storage level

function f1() public view  {

        uint[5] memory arr1 = arr;              //an array created in the momory
       arr1[3] = 87;

}

function f2() public  {

        uint[5] storage arr2= arr;             // an array created in the storage
        arr2[4]= 78;
}





}