// SPDX-License-Identifier : MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {MyToken} from "../src/MyToken.sol";

contract DeployMyToken is Script {

    uint256 public constant INITIAL_SUPPLY = 3000000;

    function run() external {
        vm.startBroadcast();
        new MyToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }
}