// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Pausable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Pyro is
    ERC20,
    ERC20Pausable,
    Ownable
{

    constructor(
        string memory _name,
        string memory _symbol,
        uint256 initialSupply
    )
        Ownable(msg.sender)
        ERC20(_name, _symbol)
    {}

 
    /**
     * @dev Function to mint new tokens and assign them to a specified address.
     * @param to The address to which the new tokens are minted.
     * @param amount The amount of tokens to be minted.
     */
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
    /**
     * @dev Function to pause all operations of the contract.
     */
    function pause() external onlyOwner {
        _pause();
    }
    /**
     * @dev Function to unpause all operations of the contract.
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @dev Destroys a `value` amount of tokens from the caller.
     * @param value The amount of tokens to be burned.
     */
    function burn(uint256 value) external {
        _burn(msg.sender, value);
    }


  // override function
    function _update(
        address from,
        address to,
        uint256 value
    )
        internal
        override(ERC20,ERC20Pausable)
    {
        super._update(from, to, value);
    }

 
}
