// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";


contract BridgeEth is Ownable {

  constructor() Ownable(msg.sender) {};

  function lock () public {

  }

  function unlock () public {

  }

  function burntOnOppsoiteChain() onlyOwner {

  }



}