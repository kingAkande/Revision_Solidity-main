// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Values of enum are integer values
// enum enables code to be more readable, instead of using 0 & 1 and it gives room for having many option

contract demo{

    enum Direction{North, South}

    Direction public ibadan;

    function setDIR(Direction _s)public{
        ibadan = _s;
    }

    function getDIR()public view returns (Direction){
        return ibadan;
    }

    function confDIR() public view returns (string memory){
        
        if(ibadan == Direction.North){
            return "u r in the right direction";
        }else {
            return "in the wrong direction";
        }
    }


 enum  Zonal{South , West}

  Zonal public direction;

  function setZone(Zonal _x )public{
    direction = _x;
  }

  function getZone()public view returns (Zonal){
    return direction;
  }

 function checkZone()public view returns (string memory){
    
    if(direction == Zonal.South){
        return "correct";
    }else {
        return "wrong";
    }
 }


}




