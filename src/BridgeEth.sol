// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract BridgeETH is Ownable {
    address public tokenAddress;
    mapping(address => uint256) public pendingBalance;

    event Deposit(address indexed user, uint256 amount);

    constructor(address _tokenAddress) Ownable(msg.sender) {
        tokenAddress = _tokenAddress;
    }

    function deposit(IERC20 _tokenAddress, uint256 _amount) public {
        require(address(_tokenAddress) == tokenAddress, "Invalid token");
        require(_tokenAddress.allowance(msg.sender, address(this)) >= _amount, "Insufficient allowance");
        require(_tokenAddress.transferFrom(msg.sender, address(this), _amount), "Transfer failed");

        emit Deposit(msg.sender, _amount);  // Trigger off-chain listener
    }

    function withdraw(IERC20 _tokenAddress, uint256 _amount) public {
        require(pendingBalance[msg.sender] >= _amount, "Insufficient pending balance");
        require(_tokenAddress.balanceOf(address(this)) >= _amount, "Contract lacks funds");

        pendingBalance[msg.sender] -= _amount;
        _tokenAddress.transfer(msg.sender, _amount);
    }

    function burnedOnOppositeChain(address _user, uint256 _amount) public onlyOwner {
        pendingBalance[_user] += _amount;
    }
}
