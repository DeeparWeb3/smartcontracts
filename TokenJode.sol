pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";


contract TokenJode is ERC20 {
    // Define the name, symbol, and decimal precision of the token
    string public name = "Jode Token";
    string public symbol = "JODE";
    uint8 public decimals = 18;

    // Define the total supply of the token
    uint256 public totalSupply;

    // Define the mapping that holds the balance of each address
    mapping(address => uint256) public balanceOf;

    // Define the constructor that sets the total supply of the token
    constructor(uint256 initialSupply) public {
        totalSupply = initialSupply;
        balanceOf[msg.sender] = totalSupply;
    }

    // Define the function that transfers tokens from one address to another
    function transfer(address to, uint256 value) public returns (bool) {
        require(balanceOf[msg.sender] >= value);
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        return true;
    }
}
