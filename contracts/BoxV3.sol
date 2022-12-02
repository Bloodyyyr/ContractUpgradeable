// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./BoxV2.sol";

contract BoxV3 is BoxV2 {

    function initialize() public initializer{
        BoxV2.initialize(maxBurn);
    }

    function addSupply(uint supplyAdd) external {
        supplyMax += supplyAdd;
    }
}
