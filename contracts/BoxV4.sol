// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./BoxV3.sol";

contract BoxV4 is BoxV3{
    uint public val2;

    function sustVal2() external{
        val2 -= 1;
    }
    function incVal2() external {
        val2 += 1;
    }
}