pragma solidity >=0.4.22 <0.9.0;


import "./contracts/BasicToken.sol";
import "./contracts/ERC20.sol";
import "./contracts/token.sol";
import "./node_modules/openzeppelin-solidity";

contract MyToken2 is BasicToken {
  string public constant name = "MyToken2";
  string public constant symbol = "MYT2";
  uint8 public constant decimals = 18;
  constructor() public {
    totalSupply_ = 100 * (10 ** uint256(decimals));
    balances[msg.sender] = totalSupply_;
  }
}