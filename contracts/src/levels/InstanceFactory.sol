// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./base/Level.sol";
import "./Instance.sol";

contract InstanceFactory is Level {
    function createInstance(address _player) public payable override returns (address) {
        _player;
        return address(new Instance("ethernaut0"));
    }

    function validateInstance(address payable _instance, address _player) public view override returns (bool) {
        _player;
        Instance instance = Instance(_instance);
        return instance.getCleared();
    }
}
