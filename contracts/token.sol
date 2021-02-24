// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("MyToken","MT") {
    
    }
    function mint(address to, uint256 value) public  returns (bool) {
        require(value > 0);
        _mint(to, value);
        return true;
    }

    function burn(uint256 amount) public {
        require(amount > 0);
        _burn(msg.sender, amount);
    }
}