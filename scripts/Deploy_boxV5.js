const { ethers, upgrades } = require("hardhat");

const PROXY = process.env.CONTRACT_PROXY;

async function main() {
  const BoxV5 = await ethers.getContractFactory("BoxV5");
  await upgrades.upgradeProxy(PROXY, BoxV5);
  console.log("Box upgraded");
}

main();