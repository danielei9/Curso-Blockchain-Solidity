// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract variables_modifiers {

    //valores enteros sin signo
    uint256 a;
    uint8 public b = 3; 

    //valores enteros con signo
    int256 c ;
    int8 public d = -32;

    //string 
    string str;
    string public str_public = "pulbico";
    string private str_private = "private";

    // bytes 

    bytes32 first_bytes;

    // Algoritmo de hash
    bytes32 public hashing = keccak256(abi.encodePacked("Hola", "daniel", uint(10), msg.sender, 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2));
    bytes32 public hashing_sha256 = sha256(abi.encodePacked("Hola", "daniel"));
    bytes20 public hashing_ripemd160 = ripemd160(abi.encodePacked("Hola", "daniel"));

    // variable address
    address my_address;
    address public address1 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2 ;
    // la direccion de quien ejecutta esta funcion
    address public address2 = msg.sender ;
    
    //variable enumeracion
    enum options {ON, OFF}
    options state;
    options constant defaultChoice = options.OFF;

    function turnOn() public {
        state = options.ON;
    }

    function turnOFF() public {
        state = options.OFF;
    }

    function displayState() public view returns (options) {
        return state;
    }


}