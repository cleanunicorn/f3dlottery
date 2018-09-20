pragma solidity ^0.4.25;

import "./F3dmock.sol";

contract Executor{
    constructor(address _f3dmock, address _owner) public payable {
        _f3dmock.call.value(msg.value)();
        selfdestruct(_owner);
    }
}