// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

import "hardhat/console.sol";


contract CHECK_ADDR{
    address public addr;
    constructor (address toCheck) {
        addr = toCheck;
    }
    
    function checkIfZeroAddr(address _addr) public pure returns(bool isZero) {
        assembly {
            mstore(0, 0x00)
            isZero := eq(_addr, mload(0))
        }
        return isZero;
    }
}
