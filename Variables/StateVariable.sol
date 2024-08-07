// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StateVaiable{
    // State variables can be modified with public, internal, and private.

    // Public State Variable :- can be accessed from anywhere
    uint8 public number;

    function setNumber(uint8 _number) public{
        number = _number; // Modifies the state variable, that's why no view or pure can be use
    }
    function getNumber() public view returns (uint8){
        return number;
    }

    
    ////////////////////////////////////////////////////////////////////////////////////////////////////


    // Private State Variable :- only accessed within the contract
    uint8 key = 123;

    // The setKey function is marked as private, so it can only be called from within the contract itself. 
    // It cannot be called externally or by other contracts.
    // To use this function you can do lot much things like making it public or using access control anything valid
    function setkey(uint8 _key) private{
        key = _key; // Modifies the state variable, that's why no view or pure can be use
    }

    function getKey() public view returns (uint8){
        return key;
    }


    ////////////////////////////////////////////////////////////////////////////////////////////////////


    // Internal State Variable :- can be accessed within the contract and derived contract
    uint8 internal data = 50;

    function setData(uint8 _data) internal{
        data = _data;
    }
    function getData() public view returns (uint8){
        return data;
    }
    function updateInternalDataBase(uint8 _data) public{
        setData(_data);
    }

}

contract AccessInternalStateVariable is StateVaiable{
    
    function showInternalData() public view returns(uint8){
        return getData();
    }
    function updateInternalDataChild(uint8 _data) public{
        setData(_data);
    }


}