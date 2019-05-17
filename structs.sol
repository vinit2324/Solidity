pragma solidity ^0.5.3;

contract structTrading{
    
    struct Trading{
        uint tradeid;
        uint quantity;
        uint price;
        string traderName;
    }
    
    Trading public cryptoTrading;
    Trading[] public cryptoTrading1;
    
    
    function setStruct(uint _tradeid, uint _quantity, uint _price, string memory _traderName ) public {
        cryptoTrading.tradeid = _tradeid;
        cryptoTrading.quantity = _quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;
    }
    
    function setStruct1(uint _tradeid, uint _quantity, uint _price, string memory _traderName ) public {
        Trading memory tempTradeStruct = Trading({
            tradeid: _tradeid,
            quantity: _quantity,
            price: _price,
            traderName: _traderName
        });
        
        cryptoTrading1.push(tempTradeStruct);
    }
    
    function getStruct() public view returns(uint, uint, uint, string memory){
        return (cryptoTrading.tradeid, cryptoTrading.quantity, cryptoTrading.price, cryptoTrading.traderName);
       
    }
}