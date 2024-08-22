// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract etherRecieve{

// function collectEther() public payable { }



// function checkBalance() public view returns (uint){
//     return address(this).balance;
// }



function getETH()public  payable {}

function calcEth()public view returns (uint){
    
    return address(this).balance;
}


//////////......................payable address........................

function sendETH(address payable reciever )public payable {
    reciever.transfer(msg.value);
}



}

