//3_CrowdFunding.js
const CrowdFunding = artifacts.require("../contracts/Project/CrowdFunding.sol"); //Instancia de nuestro contrato CrowdFunding.sol

module.exports = function (deployer) {
  deployer.deploy(CrowdFunding); //Este script hace deploy de nuestro contrato a la blockchain
};
