// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Script.sol";
import "../src/Counter.sol";
contract DeployCounter is Script {

    function run() public {
        vm.startBroadcast();
        new Counter();
        vm.stopBroadcast();
    }
}