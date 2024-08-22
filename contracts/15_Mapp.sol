// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;



//Mapping deals with data of keys and data type of value
//Mapping stores data randomly/ non-contigously.
//Mappping are not iterable


contract maPPing{

mapping(uint => string) public admitted;

mapping(string => address ) public qualified;

function setMAP(uint number , string memory name)public {

admitted[number] = name;


}


function getMap(uint number) public view returns(string memory){

    return admitted[number];
}

function setQAULI(string memory name, address adDR)public {
    qualified[name] = adDR;
}

function getQUALI(string memory name)public view returns(address){
    return qualified[name];
}


//////////////////////////////////////......MAPPING and STRUCT.......................///////////////////////

struct AccontDet{
    uint accN;
    string name;
    bool state;
}

mapping(uint => AccontDet ) public Holder;

function setHOLD(uint index, uint _accN, string memory _name,bool _state) public{
    Holder[index] = AccontDet(_accN, _name,_state);
}

function getHOLD(uint index)public view returns(AccontDet memory){

    return Holder[index];
}

function getAllHOLD()public view returns(AccontDet[] memory){

}

/////////////////////////////////////........................ Nested Mapping.........................//////////




// A nested mapping is the mapping of X to Y, where Y is the mapping of X to Z

mapping (uint => mapping (uint => bool ))public Handler;

// function insert(uint row, uint column ,bool value )public {
//         Handler[row][column] = value;
// }

// function set(uint a,uint b, bool d)public{
//     Handler[a][b] = d;
// }


// function get(uint a, uint b) public view returns (bool){
//     return Handler[a][b];
// }

function set(uint a, uint b, bool d)public{
    Handler[a][b] = d;
}

function get(uint a , uint b)public view returns(bool){
    return Handler[a][b];
}


///////////////////...................................MAPPING AND ARRAY.............


 mapping (address => uint[] ) public marks;

 function setMark(address a, uint b) public{

    marks[a].push(b);

 }

  function getMark(address a)public view returns (uint[] memory){
    return marks[a];
  }





}





