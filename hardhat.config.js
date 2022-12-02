require('@openzeppelin/hardhat-upgrades');
require('@nomiclabs/hardhat-ethers');
require('@nomiclabs/hardhat-etherscan');

require('dotenv').config();



module.exports = {
  solidity: "0.8.4",
    networks: {
      ropsten: {
        url: `https:ropsten.infura.io/v3/${process.env.INFURA_URL}`,
        accounts: [process.env.PRIVATE_KEY]
      }
    },
  etherscan: {
    apiKey: process.env.API_KEY
  }
};
