// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

interface IWKAR is IERC20 {
    function mint(address _to, uint256 _amount) external;
    function burn(address _from, uint256 _amount) external;
}

contract BridgeWKAR is Ownable {
    address public tokenAddress;
    mapping(address => uint256) public pendingBalance;

    event Burn(address indexed user, uint256 amount);

    constructor(address _tokenAddress) Ownable(msg.sender) {    
        tokenAddress = _tokenAddress;
    }

    function mint(IWKAR _tokenAddress, uint256 _amount) public onlyOwner {
        require(address(_tokenAddress) == tokenAddress, "Invalid token");
        _tokenAddress.mint(msg.sender, _amount);
    }

    function burn(IWKAR _tokenAddress, uint256 _amount) public {
        require(address(_tokenAddress) == tokenAddress, "Invalid token");
        _tokenAddress.burn(msg.sender, _amount);
        emit Burn(msg.sender, _amount);  // Triggers Ethereum withdrawal
    }
}
