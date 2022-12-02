// scripts/create-box.js
const { ethers, upgrades } = require("hardhat");

async function main() {
  const Box = await ethers.getContractFactory("Box");
  const box = await upgrades.deployProxy(Box, [5000000]);
  await box.deployed();
  console.log("Box deployed to:", box.address);
}

main();