// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import "forge-std/Script.sol";
import "../src/MyToken.sol";

contract DeployContractScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
        new MyToken("My Token", "MTK");
    }
}