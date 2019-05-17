pragma solidity ^0.5.3;

contract enumsExample{
    
    enum ClaimStatus{Approved, Rejected}
    
    ClaimStatus status;
    
    function setStatus(uint _claim_amount) public {
        if (_claim_amount > 100){
            status = ClaimStatus.Rejected;
        }
        else if (_claim_amount <100){
            status = ClaimStatus.Approved;
        }
    }
    
    function getStatus() public view returns(ClaimStatus){
        return status;
    }
}