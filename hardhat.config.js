require('dotenv/config');
require('@nomicfoundation/hardhat-toolbox');

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: '0.8.17',
  networks: {
    goerli: {
      accounts: {
        mnemonic: process.env.MNEMONIC,
      },
      url: 'https://rpc.ankr.com/eth_goerli',
    },
  },
};
