// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "forge-std/Script.sol";

import {Gondi} from "../src/Gondi.sol";

contract GondiInitCode is Script {
    address private constant CONDUIT_CONTROLLER =
        0x00000000F9490004C11Cef243f5400493c00Ad63;
    function run() public returns (bytes memory initCode) {
        // Packed and ABI-encoded contract bytecode and constructor arguments.
        // NOTE: The Seaport contract *must* be compiled using the optimized profile config.
        initCode = abi.encodePacked(
            type(Gondi).creationCode,
            abi.encode(CONDUIT_CONTROLLER)
        );
        return initCode;
    }
}
