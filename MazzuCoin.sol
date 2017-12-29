pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MazzuCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MazzuCoin(address _owner)  UpgradeableToken(_owner) {
    name = "MazzuCoin";
    symbol = "MZC";
    totalSupply = 50000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}