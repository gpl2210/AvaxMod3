# PhantomGopal (PGT) Smart Contract

## Overview

PhantomGopal is an ERC-20 token smart contract written in Solidity. It inherits from the OpenZeppelin ERC20 and ERC20Burnable contracts, providing standard ERC-20 functionality along with the ability to burn tokens. Additionally, it inherits from the Ownable contract to restrict certain functions to the contract owner.

## License

This contract is licensed under the MIT License. See the LICENSE file for details.

## Smart Contract Details

### Token Information

- **Name:** PhantomGopal
- **Symbol:** PGT
- **Decimals:** [Specify the number of decimals]

### Features

#### Token Minting:

- The initial supply of PhantomGopal is minted to the contract creator's address during deployment.
- The contract owner can mint additional tokens using the `mint` function.

#### Token Burning:

- PhantomGopal supports token burning functionality inherited from ERC20Burnable.

#### Ownership:

- The contract includes the Ownable modifier, ensuring that certain functions can only be executed by the owner.

## Functions

### `mint(address to, uint256 amount) external onlyOwner`

Mints additional tokens to the specified address. This function can only be executed by the contract owner.

## Smart Contract Deployment

To deploy the PhantomGopal smart contract, provide the following parameters:

- `initialOwner`: The initial owner of the contract.


## License

This smart contract is released under the MIT License. See the LICENSE file for more details.


