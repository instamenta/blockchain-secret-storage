// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

library UtilityLib {

    function _compare(string memory _str1, string memory _str2)
    internal
    pure
    returns (bool)
    {
        if (bytes(_str1).length != bytes(_str2).length) {
            return false;
        }
        return keccak256(abi.encodePacked(_str1)) == keccak256(abi.encodePacked(_str2));
    }

}