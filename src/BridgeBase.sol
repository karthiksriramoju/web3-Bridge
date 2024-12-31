// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract BridgeBase is Ownable {
  constructor() Ownable(msg.sender) {};

  function mint () public {

  }

  function burn () public {

  }

  function mintedOnOtherSide() onlyOwner {

  }


}
   