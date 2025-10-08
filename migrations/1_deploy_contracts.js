// This script tells Truffle how to deploy our smart contract.
const Messenger = artifacts.require("Messenger");

module.exports = function (deployer) {
  deployer.deploy(Messenger);
};
