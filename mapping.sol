pragma solidity ^0.5.3;

contract MappingExample{
    mapping (address => uint) public balances;
    
    function setBalance(uint _balance) public{
        
        balances[msg.sender] = _balance;        
    }
    
    function getBalances (address _address) public view returns(uint){
        return balances[_address];
    }
}