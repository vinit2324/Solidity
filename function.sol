pragma solidity ^0.5.3;
contract Functions{
    
    int public var1;
    int public var2;
    
    //Setter Function
    
    function setValues(int _var1, int _var2) public {
        var1 = _var1;
        var2 = _var2;
    }
    
    //getter function
    function getValues() public view returns(int _total){
        _total = var1;
    }
}