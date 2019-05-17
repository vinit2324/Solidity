pragma solidity ^0.5.3;

contract VarTypes{
    int public stateVar1;
    string public stateVar2;
    
    function f1() public {
        
        int _var1 = 2;
        string memory _var2 = "John";
        stateVar1 = _var1;
        stateVar2 = _var2;
    }
    
    function f2() public{
        int _var1 = 5;
        stateVar1 = _var1;
    }
}