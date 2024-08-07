// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SpecialVariable{
    // Special variables, often referred to as special functions, are built-in Solidity features that provide specific functionalities.
    // They are not accessed like global variables but are used in a more functional context to achieve specific goals, such as transferring Ether, managing contract lifecycle, or handling fallback behavior.

    // Provide low-level control or specific functionalities (e.g., contract destruction).
    // Often used to perform specific actions or operations.

    /*
    this: Refers to the current contract instance. It is often used to get the contract's address (address(this)).
        
    assert, require, and revert: Used for error handling, but they behave in specific ways when conditions are not met.
    
    abi.encode, abi.encodePacked, abi.decode: Functions for encoding and decoding data.

    etc.
    */


    /*
    There exist special variables and functions in solidity which exist in the global namespace and are mainly used to provide information about the blockchain or utility functions. 
    They are of two types:
    1) Block and Transaction Properties:
    2) ABI encoding and decoding functions:
    */

    //this is broad concept we will see it later
    
    //state variable
    address private contractAddress;

    constructor(){
        // Assigns the address of this contract to a state variable
        contractAddress = address(this);
    }

    function getContractAddress() public view returns (address){
        return contractAddress;
    }
}