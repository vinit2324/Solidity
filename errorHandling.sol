pragma solidity ^0.5.3;

contract ErrorHandling{
    
    address public owner;
    uint public balance;
    
    constructor() public{
        owner = msg.sender;
    }

    function setDestructContract(address payable _address) public{
        require (msg.sender == owner, "Only Contract owner can run this function");
        assert (address(this).balance != 0);
        selfdestruct(_address);
    }
    
    function RecieveEther() public payable returns(uint){
        balance = address(this).balance;
        revert("halt this execution");
        return balance;
    }
}