pragma solidity ^0.5.3;

contract modifierExample{
    
    address public owner;
    uint public balance;
    
    constructor() public{
        owner = msg.sender;
    }
    
    modifier OwnerOnly{
        if (msg.sender == owner){
            _;
        }
    }
    
  
    function setDestructContract(address payable _address) OwnerOnly public{

        selfdestruct(_address);
    }
    
    function RecieveEther() public payable returns(uint){
        balance = address(this).balance;

        return balance;
    }
}