pragma solidity ^0.5.3;

contract IntBoolExample{
    
    int8 public intVar8 = -128;
    int16 public intVar16 = 10000;
    uint8 public uintVar8 = 255;
    bool public flagVar = true;
    
    function setIntBool(int8 _intVar8, uint8 _uintVar8, bool _flagVar) public{
        intVar8 = _intVar8;
        uintVar8 = _uintVar8;
        flagVar = _flagVar;
    }
}