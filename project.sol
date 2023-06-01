// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string name = "Stancoin";
    string abr = "STC"; 
    uint public supply = 25; 
    
    address add1=  0x742d35Cc6634C0532925a3b844Bc454e4438f44e;
    address add2= 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;
    address add3  = 0x1Ca6Da562Ff40c94E132479262505C9e2a106283;

    // mapping variable here
    mapping (address => uint) public balance;
    
    // mint function
    function mint(address a, uint val) public {
        //add to suply 
        supply += val;
        balance[a] += val;

    }

    // burn function
    function burn(address a, uint val) public {
        //one can only burn coins that he owns 
        if(val<= balance[a]){
            supply -= val;
            balance[a] -= val;
        }
        
    }

}
