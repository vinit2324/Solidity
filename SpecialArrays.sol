pragma solidity ^0.5.3;

contract SpecialArrays{
    
    bytes public var1 = new bytes(0);
    
    string public var2 = "Solidity Smart Contract";
    
    bytes public var3 = bytes(var2);
    
    
    function setBytes(byte _var1) public{
        var1.push(_var1);
    }
    
    function getLength() public view returns(uint){
        return var3.length;
    }
    
    function popBytes() public {
        var1.pop();
    }
}