// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./BoxV4.sol";

contract BoxV5 is BoxV4 {
    uint public val3;

    function sustVal3() external {
        val3 -= 1;
    }

    function incVal3() external {
        val3 += 1;
    }
}