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
