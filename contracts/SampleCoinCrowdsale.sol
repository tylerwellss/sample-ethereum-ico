pragma solidity ^0.4.13;

// We import our created SampleCoin as well as OpenZeppelin's 
// CappedCrowdSale contract, which we extend and modify.

import './SampleCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/CappedCrowdsale.sol';

contract SampleCoinCrowdSale is CappedCrowdsale {

  // CrowdSale.sol requires the following parameters:
  // startTime, endTime, rate (of eth to SampleCoin), wallet (of contract owner)
  // CappedCrowdSale additionally requires a cap parameter

  function SampleCoinCrowdSale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet, uint256 _cap) 
    Crowdsale(_startTime, _endTime, _rate, _wallet)
    CappedCrowdsale(_cap)
    {}

  // createTokenContract creates the tokens to be sold
  // We override this method to have crowdsale of a specific MintableToken token
  // named SampleCoin

  function createTokenContract() internal returns (MintableToken) {
    return new SampleCoin();
  }

}