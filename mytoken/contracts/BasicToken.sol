pragma solidity >=0.4.22 <0.9.0;

import "./ERC20.sol";

contract BasicToken is ERC20 {
  mapping(address => uint256) balances;
  uint256 totalSupply_;
 
  event Transfer(address indexed from, address indexed to, uint256 value);
  function totalSupply() public view returns (uint256) {
    return totalSupply_;
  }
 
  function balanceOf(address _owner) public view returns (uint256) {
    return balances[_owner];
  }
  function transfer(address _to, uint256 _value) public returns (bool) {
    require(_to != address(0));
    require(_value <= balances[msg.sender]);
    balances[msg.sender] = balances[msg.sender] — _value;
    balances[_to] = balances[_to] + _value;
    emit Transfer(msg.sender, _to, _value);
    return true;
  }
}