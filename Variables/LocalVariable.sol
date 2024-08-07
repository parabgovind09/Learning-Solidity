// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariable{

    // Local variables exist only within the scope of a function and do not have access modifiers because they are always private to the function.
    // They are not stored on the blockchain.

    function calculateSum() public pure returns (uint256){
        //Local variables
        uint256 a = 10;
        uint256 b = 20;
        uint256 sum = a + b;
        return sum;
    } 
}