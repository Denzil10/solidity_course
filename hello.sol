// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hello {

    uint public cether; 
    uint public cwei; 
    uint public cgwei; 

    function setval(uint initial) public {
        cether = initial;
    }

    function calval(uint cether_value) public {
        cwei = cether_value * 1e18;
        cgwei = cether_value * 1e9;
    }

    function getwei() public view returns(uint) {
        return cwei;
    }
    function getgwei() public view returns(uint) {
        return cgwei;
    }
    
    
}
