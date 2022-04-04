pragma solidity >=0.4.22 <0.9.0;

import "./BasicToken.sol";
contract MyToken is BasicToken {
  string public constant name = "MyToken";
  string public constant symbol = "MYT";
  uint8 public constant decimals = 18;
  constructor() public {
    totalSupply_ = 100 * (10 ** uint256(decimals));
    balances[msg.sender] = totalSupply_;
  }
 
}