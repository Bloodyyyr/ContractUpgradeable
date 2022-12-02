const { ethers, upgrades } = require("hardhat");

const PROXY = process.env.CONTRACT_PROXY;

async function main() {
  const BoxV3 = await ethers.getContractFactory("BoxV3");
  await upgrades.upgradeProxy(PROXY, BoxV3);
  console.log("Box upgraded");
}

main();