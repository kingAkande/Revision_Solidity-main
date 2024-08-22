// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract Global{
//msg.sender
//msg.value

address sender = msg.sender;
uint valueSent = msg.value;

function knowsender()public view returns (address){
    return msg.sender;
}

function knowTime() public view returns (uint){
    return block.timestamp;
}

}