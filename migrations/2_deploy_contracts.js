const Migrations = artifacts.require("./ExpensesList.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
