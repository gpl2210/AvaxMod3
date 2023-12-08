// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

     * ## Overview
     * PhantomGopal (PGT) is an ERC-20 token designed for various use cases, featuring a total supply of 10 million tokens. This contract is based on the OpenZeppelin library, utilizing the ERC-20 and Ownable modules.
     
     * ### Features
     * - **Mintable:** Allows the owner to mint additional tokens as needed.
     * - **Burnable:** Provides functionality to burn (destroy) tokens, reducing the total supply.
     * - **Ownable:** Grants exclusive ownership rights to the designated initial owner.
     
     * ## Token Details
     * - **Name:** phantomGopal
     * - **Symbol:** PGT
     * - **Decimals:** 18 (for better precision)
     
     * ## Initial Distribution
     * Upon deployment, the smart contract will mint and allocate 10 million PGT tokens to the initial owner.
     *
     * ## Functions
     
     * ### Minting
     * The owner has the ability to mint new tokens. This feature is useful for expanding the token supply as needed.
     * ```solidity
     * function mint(address to, uint256 amount) external onlyOwner {
     *     _mint(to, amount);
     * }
     * ```
     
     * ### Burning
     * Token holders can burn their own tokens, effectively reducing the total supply. This is achieved using the standard ERC-20 `burn` function from the OpenZeppelin library.
