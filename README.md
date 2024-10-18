# MyToken ERC20 Contract

This repository contains a simple ERC20 token contract named **MyToken** using OpenZeppelin's ERC20 implementation.

## Token Details
- **Name**: Binance Coin
- **Symbol**: BNB
- **Solidity Version**: 0.8.26

## Features
- Mint tokens to the caller's address.
- Burn tokens from the caller's address.
- Transfer tokens to other addresses.

## Prerequisites
- A web3-enabled browser with [MetaMask](https://metamask.io/) installed.
- [Remix IDE](https://remix.ethereum.org/), an online Solidity IDE.

## Getting Started with Remix

1. **Open Remix**: Visit [Remix](https://remix.ethereum.org/).

2. **Create a New File**: 
    - Click on the "File Explorer" icon in the left panel.
    - Click on the "+" icon to create a new file named `MyToken.sol`.

3. **Copy and Paste the Code**:
    - Copy the contents of the contract below and paste it into `MyToken.sol`:

    ```solidity
    // SPDX-License-Identifier: MIT
    pragma solidity 0.8.26;

    import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    contract MyToken is ERC20 {

        string public tokenName = "Binance Coin";
        string public tokenSymbol = "BNB";
        
        constructor() ERC20(tokenName, tokenSymbol) {}

        function mint(uint256 _amount) public {
            _mint(msg.sender, _amount);
        }

        function burn(uint256 _amount) public {
            _burn(msg.sender, _amount);
        }
        
        function transfer(address recipient, uint256 amount) public override returns (bool) {
            _transfer(msg.sender, recipient, amount);
            return true;
        }
    }
    ```

4. **Compile the Contract**:
    - Go to the "Solidity Compiler" tab on the left (it looks like a "Solidity logo").
    - Select `0.8.26` as the compiler version.
    - Click "Compile MyToken.sol".

5. **Deploy the Contract**:
    - Go to the "Deploy & Run Transactions" tab (icon looks like a "computer and Ethereum logo").
    - Ensure that your environment is set to "Injected Web3" to connect with MetaMask.
    - Click "Deploy" under the `MyToken` contract.

6. **Interact with the Contract**:
    - After deploying, the contract will appear under "Deployed Contracts."
    - Expand the contract to interact with its functions:
        - **Mint**: To mint new tokens to your account, enter the amount in `mint` and click the button.
        - **Burn**: To burn tokens from your account, enter the amount in `burn` and click the button.
        - **Transfer**: To transfer tokens to another address, input the recipient's address and amount in `transfer` and click the button.
