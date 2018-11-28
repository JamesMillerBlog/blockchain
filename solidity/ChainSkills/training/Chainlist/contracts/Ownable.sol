pragma solidity ^0.4.18;

contract Ownable {
  // state of variables
  address owner;

  // modifiers
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  // constructor
  function Ownable() public {
    owner = msg.sender;
  }
}
