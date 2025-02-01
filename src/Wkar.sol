// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Wkar is ERC20, Ownable{
  constructor() ERC20("WKARTHIK", "Wkar") ownable(msg.sender) {}
  funciton mint(address _to,uint256 _value) public onlyOwner {
    _mint(_to, _value);
 }

  funciton burn(address _to,uint256 _value) public onlyOwner {
    _burn(_to, _value);
 }
 } 
