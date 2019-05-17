pragma solidity ^0.5.3;
///@author John Smith
/** @title This smart contract is for capturing the Emplyee EmpDetails
 */
contract EmpDetails{
/* this is single line comment
 this is second line
 */
    string  EmpName;
    uint  Age;
    
    constructor (string memory _empName, uint _age) public{
        EmpName = _empName;
        Age = _age;
    }

    function getEmpDetails() public view returns(string memory, uint){
        return (EmpName,Age);
    }
/** @dev Saves Emp name and age
 *  @param _empName is name of employee
 *  @param _age is age of the employee
 */

    function setEmpDetails(string memory _empName, uint _age) public {
        EmpName = _empName;
        Age = _age;
    }
}

