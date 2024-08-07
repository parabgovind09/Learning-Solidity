// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVariable{
    
    // Global variables are built into Solidity and do not have access modifiers because they are available everywhere within the contract.
    
    // Global variables in Solidity provide information about the blockchain and the current transaction.
    // These variables are available in every contract and provide useful details about the environment in which the contract is executed.
    
    // Global variables are predefined variables in Solidity that give you access to information about the blockchain, the current transaction, or the current block.
    // These variables are accessible throughout your contract without needing to declare them.

    // Provide contextual information about the transaction, block, or blockchain.
    
    // Examples include msg.sender, msg.value, block.timestamp, etc.

    function getSenderAddress() public view returns (address){
        return msg.sender;
    }

    function getBlockTime() public view returns (uint){
        return block.timestamp;
    }

    function getBlockNumber() public view returns (uint) {
        return block.number;
    }

}