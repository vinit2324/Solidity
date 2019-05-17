pragma solidity ^0.5.3;

contract ActQualifier{
    int var1 = 5;
    int public var2 = 4;
    
    function f1() public view  returns(int _total){
        _total = var1 + var2;
        return _total;
    }
    
    function f2() public pure returns(int _total){
        _total = 3+5;
        return _total;
    }
    
    function() external payable{
        
    }
}