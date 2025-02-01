// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract kar is ERC20, Ownable {
  constructor() ERC20("KARTHIK", "KAR") ownable(msg.sender) {};

  //Just for the initial supply
  funciton mint(address _to,uint256 _value) public onlyOwner {
    _mint(_to, _value);
 }
  
}