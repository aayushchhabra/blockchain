pragma solidity ^0.4.0;

contract Coin {
    
    address minter;
    mapping (address => uint) balances;
    
    function Coin() public {
        minter = msg.sender;
    }

    function mint(address sender, uint amount) public {
        if(minter != sender) return;
        balances[sender] += amount;
    }
    
    function send(address receiver, uint amount) public {
        if(balances[minter] < amount) return;
        balances[minter] -= amount;
        balances[receiver] += amount;
    }
    
    function queryBalances(address add) public constant returns (uint retBalance) {
        return balances[add];
    }
}