// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract phantomGopal is ERC20, Ownable(msg.sender) {
    // Constructor
    constructor() ERC20("phantomGopal", "PGT") {
        _mint(msg.sender, 10 * 10 ** decimals()); 
    }

    // Modifier to make sure that only the contract owner can call this particular function
    modifier onlyOwnerOrApproved() {
        require(msg.sender == owner() || msg.sender == address(this), "You are an imposter");
        _;
    }

   
    // function _mint(address account, uint256 amount) external onlyOwnerOrApproved {
    //   require(account != address(0), "ERC20: mint to the zero address");

    //   _totalSupply += amount;
    //   _balances[account] += amount;
    //   emit Transfer(address(0), account, amount);
    // }


    // (only contract owner)
    function mint(address to, uint256 amount) external onlyOwnerOrApproved {
        _mint(to, amount);
    }

    // (any user)
    function transferTo(address to, uint256 amount) external {
        _transfer(msg.sender, to, amount);
    }

    // (any user)
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
