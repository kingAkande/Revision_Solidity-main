// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MOdF {


    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier owneronly() {
        require(msg.sender == owner, "get out");
        _;
    }

    modifier Check() {
        require(true == true, "not true");
        _;
    }

     function changeowner( address _newowner)public owneronly{
        owner = _newowner;
    } 


    function f1() public pure Check returns (bool) {
        return true;
    }

    function f2() public pure Check returns (bool) {
        return true;
    }

    function f3() public pure Check returns (bool) {
        return true;
    }
}
