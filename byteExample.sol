pragma solidity ^0.5.3;

contract byteExample{
    
    bytes1 public var1 = 'a';
    bytes2 public var2 = 'ab';
    bytes3 public var3 = 'ab';
    bytes4 public var4 = 0x12345678;
    
    function getByte(uint i) public view returns(bytes1){
        return var3[i];
    }
    
    function getLength() public view returns(uint){
        return var4.length;
    }
}