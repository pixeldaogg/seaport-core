// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Consideration} from "./lib/Consideration.sol";

/**
 * @title Gondi
 * @custom:version 1.0
 * @notice Gondi trade contract. This contract is a fork of the Seaport contract.
 */
contract Gondi is Consideration {
    /**
     * @notice Derive and set hashes, reference chainId, and associated domain
     *         separator during deployment.
     *
     * @param conduitController A contract that deploys conduits, or proxies
     *                          that may optionally be used to transfer approved
     *                          ERC20/721/1155 tokens.
     */
    constructor(address conduitController) Consideration(conduitController) {}

    /**
     * @dev Internal pure function to retrieve and return the name of this
     *      contract.
     *
     * @return The name of this contract.
     */
    function _name() internal pure override returns (string memory) {
        // Return the name of the contract.
        return _nameString();
    }

    /**
     * @dev Internal pure function to retrieve the name of this contract as a
     *      string that will be used to derive the name hash in the constructor.
     *
     * @return The name of this contract as a string.
     */
    function _nameString() internal pure override returns (string memory) {
        // Return the name of the contract.
        return "GONDI";
    }

    function _version() internal pure override returns (string memory) {
        // Return the name of the contract.
        return "1.0";
    }
}
