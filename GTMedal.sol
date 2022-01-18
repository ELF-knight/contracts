// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "./owner/AdminRole.sol";

contract GTMedal is ERC20Burnable, AdminRole {
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_){
        _mint(msg.sender, 1000 * 10**4 * 1e18);
    }
}