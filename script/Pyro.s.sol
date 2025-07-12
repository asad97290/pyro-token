// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Pyro} from "../src/Pyro.sol";
contract PyroScript is Script {
    

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        Pyro zarvo = new Pyro("Pyro Token", "PYRO",10_000_000_000 ether);

        console.log("Zarvo deployed to: ", address(zarvo));
        vm.stopBroadcast();
    }
}
