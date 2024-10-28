// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import "@openzeppelin/contracts@5.1.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.1.0/access/Ownable.sol";
import "@openzeppelin/contracts@5.1.0/token/ERC20/extensions/ERC20Permit.sol";

contract AcmeToken is ERC20, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("QuickToken", "QUICK")
        Ownable(initialOwner)
        ERC20Permit("QuickToken")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
