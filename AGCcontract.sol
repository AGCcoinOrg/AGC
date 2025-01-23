// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0

/*
 info@agccoin.org
 Auto Gallery Coin 
 https://www.agccoin.org                                         
 2025-01-03 Izmir
     _    ____  ____             _       
    / \  / ___|/ ___|   ___ ___ (_)_ __  
   / _ \| |  _| |      / __/ _ \| | '_ \ 
  / ___ \ |_| | |___  | (_| (_) | | | | |
 /_/   \_\____|\____|  \___\___/|_|_| |_|
                                         
*/


pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts@5.2.0/token/ERC20/ERC20.sol";
import {ERC20Pausable} from "@openzeppelin/contracts@5.2.0/token/ERC20/extensions/ERC20Pausable.sol";
import {ERC20Permit} from "@openzeppelin/contracts@5.2.0/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "@openzeppelin/contracts@5.2.0/access/Ownable.sol";

/// @custom:security-contact info@agccoin.org
contract AutoGalleryCoin is ERC20, ERC20Pausable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Auto Gallery Coin", "AGC")
        Ownable(initialOwner)
        ERC20Permit("Auto Gallery Coin")
    {
        _mint(msg.sender, 900000000 * 10 ** decimals());
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    // The following functions are overrides required by Solidity.

    function _update(address from, address to, uint256 value)
        internal
        override(ERC20, ERC20Pausable)
    {
        super._update(from, to, value);
    }
}


/*
 info@agccoin.org
 Auto Gallery Coin 
 https://www.agccoin.org                                         
 2025-01-03 Izmir
     _    ____  ____             _       
    / \  / ___|/ ___|   ___ ___ (_)_ __  
   / _ \| |  _| |      / __/ _ \| | '_ \ 
  / ___ \ |_| | |___  | (_| (_) | | | | |
 /_/   \_\____|\____|  \___\___/|_|_| |_|
                                         
*/
