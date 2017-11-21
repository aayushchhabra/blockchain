pragma solidity ^0.4.0;
contract SimpleStorage {
    uint value;
    function setData(uint val) public {
        value = val;
    }
    function getData() constant public returns (uint retVal) {
        return value;
    }
}