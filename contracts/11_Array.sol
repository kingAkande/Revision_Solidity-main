// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//Arrays are of two types "FIXED SIZE" and "DYNAMIC SIZE" array

contract Arraying {

    // uint [4] public  num = [8,5,7,2];


    // function setARR(uint index, uint _item)public {
    //     num[index] = _item;
    // }

    // function getARR(uint index) public view returns(uint){

    //         return num[index];
    // }

    // function getALLelemen()public view returns (uint[4] memory){
    //     return num;
    // }

uint[5] public matric;     //for a fixed size array

uint[] public nIN;   //for a dynamic size array

uint[] public bVN;   // fr a dynamic size array

function setMAT(uint index, uint item)public{
    matric[index]= item;

}

function getMAT(uint index)public view returns(uint){

    return matric[index];
}

function pesentMAT()public view returns(uint[5] memory){
    return matric;
}


/////////////////////////////////////////////////////////////////////////////////

function setNIN(uint item)public{
    nIN.push(item);
}

function getNIN(uint index)public view returns (uint){
    return nIN[index];
}

function getALLNIN()public view returns (uint[] memory){
    return nIN;
}

function removeNIN()public {
    nIN.pop();
}


function lengthNIN()public view returns(uint){
   return  nIN.length;
}



///////////////////////////////////////////////////////////////////////////////////



function setBVN(uint item)public{
    bVN.push(item);
}

function getBNV(uint index)public view returns(uint){
    return bVN[index];
} 

function removeBVN() public {
    bVN.pop();
}

function getALLBVN()public view returns (uint[] memory){
    return bVN;
}

function lengthBVN()public view returns (uint){
    return bVN.length;
}

}



