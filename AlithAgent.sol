// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AlithAgent {

    function getCommamdResponse (string memory command) public pure returns (string memory ) {

        bytes32 hash = keccak256(abi.encodePacked(command));

        if (hash == keccak256("deploy drone") )return "Deploying a drone";
        if (hash == keccak256("fire drone")) return "Firing the drone!";
        if (hash == keccak256("destroy drone") )return "Destroying a drone";

        return "Unknown command...";
    } 
    
}