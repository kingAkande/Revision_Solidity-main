// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//loops are created in functions and not in contract level

contract Loops {

   function looping() public pure returns(uint){
    //  uint sum;
    //  uint count;

// //      while(count<5){
// //         sum = sum + count;
// //         count = count+1;
// //      }
// //      return sum;
// //    }    

//   uint sum;
//  for(uint count=0; count<5; count++){
//         sum = sum + count;
//  }
// return sum;

// }

  uint sum;
  uint count;

  do{
     sum = sum + count;
    count = count+1;
  }while(count<5);

return sum;
 
}
}