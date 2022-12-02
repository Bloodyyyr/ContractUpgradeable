// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./Box.sol";

contract BoxV2 is Box {
    uint public tokenBurned;
    uint public maxBurn;

    function initialize(uint burnMax) public override(Box) initializer{
        Box.initialize(supplyMax);
        maxBurn = burnMax;
    }

    function burn(uint burned) external {
        require(tokenBurned + burned>= maxBurn, "Max Burn");
        tokenBurned += burned;
        _burn(msg.sender, burned);
    }

}
