require('dotenv').config();
const { ethers, upgrades } = require("hardhat");

const PROXY = process.env.CONTRACT_PROXY

async function main() {
  const BoxV2 = await ethers.getContractFactory("BoxV2");
  await upgrades.upgradeProxy(PROXY, BoxV2, [2000000]);
  console.log("Box upgraded");
}

main();