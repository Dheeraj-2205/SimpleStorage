// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint256 public count;
    address immutable i_owner;

    constructor() {
        i_owner = msg.sender;
    }

    function increament() public CheckOwner {
        count = count + 1;
    }

    function decreament() public CheckOwner {
        require(count > 0, "no less than 0");
        count = count - 1;
    }

    function reset() public CheckOwner {
        count = 0;
    }

    modifier CheckOwner() {
        require(msg.sender == i_owner, "you are not an owner");
        _;
    }
}
