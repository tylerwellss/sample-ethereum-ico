const SampleCoinCrowdsale = artifacts.require("./SampleCoinCrowdsale.sol")

module.exports = function(deployer, network, accounts) {
  // Our startTime is one second in the future
  // our endTime is 20 days after the start time
  // Our exchange rate is 1000 SampleCoins to 1 Eth
  // Our wallet is the 0 index account on our local testnet
  // Our cap is one million
  const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1
  const endTime = startTime + (86400 * 20)
  const rate = new web3.BigNumber(1000)
  const wallet = accounts[0]
  const cap = 1000000

  // This deploy does not deploy our coin. It deploys SampleCoinCrowdsale,
  // which will create our coin upon purchase
  deployer.deploy(SampleCoinCrowdsale, startTime, endTime, rate, wallet, cap)
};