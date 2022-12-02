const { ethers, upgrades } = require("hardhat");

const PROXY = process.env.CONTRACT_PROXY;

async function main() {
  const BoxV4 = await ethers.getContractFactory("BoxV4");
  await upgrades.upgradeProxy(PROXY, BoxV4);
  console.log("Box upgraded");
}

main();