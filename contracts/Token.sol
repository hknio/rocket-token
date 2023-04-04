// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
  uint256 price = 0.01 ether; // price of 1 token in ether

  constructor() ERC20("Rocket Token", "ROCKET") {
    _mint(msg.sender, 1_000_000 * 10 ** decimals());
  }

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }

  function buy() external payable {
    require(msg.value > 0, "You must send some ether");
    _mint(msg.sender, msg.value * 10 ** decimals() / price);
  }
}
