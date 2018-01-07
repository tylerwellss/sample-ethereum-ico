pragma solidity ^0.4.13;

// Our token contract relies heavily on OpenZeppelin's MintableToken
// contract. You can view more details regarding his contract in
// node_modules/zeppelin-solidity/contracts/token/MintableToken.sol

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

// By using OpenZeppelin's framework, we simply create a coin and
// extend OpenZeppelin's MintableToken class. In this example, we 
// name it SampleCoin, give it the symbol TST, and set public decimals
// to 18, which is relatively standard.

contract SampleCoin is MintableToken {
  string public name = "SAMPLE COIN";
  string public symbol = "TST";
  uint8 public decimals = 18;
}
