// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract structing{

    struct Hnd2{
        string name;
        uint matric;
        bool eligibility;
    }


    struct Hnd3{
        string name;
        uint matric;
        bool stat;
    }

    Hnd2 public p1;


    function setppl(string memory _name, uint _mat, bool _elig)public{

           p1 = Hnd2(_name,_mat,_elig);

            // p1.name = _name;
            // p1.matric =_mat;
            // p1.eligibility = _elig;
    }


    function getppl()public view returns(Hnd2 memory){
        return p1;
    }


    function getname()public view returns (string memory){
        return p1.name;
    }


    function getMat()public view returns (uint){
        return p1.matric;
    }


    function getEliig()public view returns (bool){
        return p1.eligibility;
    }







Hnd3[4]public s;

function setStudent(uint index, string memory _name, uint _mat, bool _stat)public {

    s[index]= Hnd3(_name, _mat, _stat);

}


function getStudent(uint index)public view returns(Hnd3 memory){
    
          return s[index];
}

  
function getALlstudent()public view returns(Hnd3[4] memory){

    return s;
}




///////////////////////////////////////////////////////////////////////////////////////////////



struct Nce{

    uint year;
    bool grad;
    string marital;

}

Nce[3] public t;

function setNce(uint index, uint _year, bool _grad, string memory _mari)public {
        t[index] = Nce(_year,_grad,_mari);
}

function getNce(uint index)public view returns (Nce memory){

        return t[index];
}

function getAllNce()public view returns (Nce[3] memory){
    return t;
}

function delNce(uint index)public{
    delete t[index];
}



struct vegetable{
    string name;
    string color;
    bool   choice;
}

vegetable[]public v;


function setV(string memory _name, string memory _color, bool ch )public{

    v.push(vegetable(_name, _color , ch));
    
}

function getV(uint index)public view returns( vegetable  memory){

return v[index];

} 


function returnAll()public view returns(vegetable[] memory ){
    return v;
}




// vegetable public v;

// function f1(string memory _name,string memory  _col , bool cho)public {

//     v = vegetable(_name, _col , cho);
// }

// uint[]public r1;

// function f2(uint item)public {

//     r1.push(item);
// }



}
