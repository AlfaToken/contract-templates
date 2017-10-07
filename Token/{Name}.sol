pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract {Name} is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function {Name}(address _owner)  UpgradeableToken(_owner) {
    name = "{Name}";
    symbol = "{Symbol}";
    totalSupply = {TotalSupply};
    decimals = {Decimals};

    balances[_owner] = totalSupply;
  }
}