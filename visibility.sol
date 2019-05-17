pragma solidity ^ 0.5.3;

contract A{
    int public var1=7;
    
    function getVal1() public view returns(int){
        return var1;
    }
    
    function getVal2() external view returns(int){
        int x = getVal1();
        return x;
    }
    
    function getVal3() private view returns(int){
        int x = getVal1();
        return x;
    }
    
    function getVal4() internal view returns(int){
 
        return var1;
    }
}

contract B{
    A public a = new A();
    int public x1 = a.getVal1();
    int public x2 = a.getVal2();
    //int public x3 = a.getVal3(); This is private function error
    //int public x4 = a.getVal4();
}

contract C is A{
    
    int public x1 = getVal4();
    //int public x2 = getVal3();
    
    
}