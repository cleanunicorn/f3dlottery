pragma solidity ^0.4.25;

contract F3dmock {
    address private owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function () payable public {
        msg.sender.transfer(msg.value);
    }
    
    function kill() public {
        selfdestruct(owner);
    }
}