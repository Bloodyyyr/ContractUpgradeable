// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract Box is Initializable, ERC20Upgradeable{
    uint public supply;
    uint public supplyMax;

    function initialize(uint maxSupply) public virtual initializer {
        __ERC20_init("MyToken", "MT");
        supplyMax = maxSupply;
    }

    function mint(uint minted) external{
        require(supply + minted <= supplyMax, "Supply max");
        supply += minted;
        _mint(msg.sender, minted);
    }
}
