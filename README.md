# A sample Ethereum coin creation contract and capped crowdsale contract built using Truffle

### Project setup

First, install node and npm. This sample was tested using npm 5.5.1 and node 8.9.0.

Second, clone this repo. Within the cloned directory, run the following commands to install our dependencies, which include  ethereumjs-testrpc (a testnet), truffle (an Ethereum framework), and zeppelin-solidity (a library for writing Solidity smart contracts).

```
npm install -g ethereumjs-testrpc
npm install -g truffle
npm install zeppelin-solidity
```

### Within the project folder, start the testnet

`testrpc -u 0`

This will create test accounts and private keys. 

### Once the testnet is running, open a second terminal and use Truffle to compile and migrate our contracts to the testnet

```
truffle compile
truffle migrate
```
