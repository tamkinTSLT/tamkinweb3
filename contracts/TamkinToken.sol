// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract TamkinToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Tamkin", "TSLT") {
        _mint(msg.sender, initialSupply);
    }

    function burn(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Not enough tokens to burn");
        _burn(msg.sender, amount);
    }
}