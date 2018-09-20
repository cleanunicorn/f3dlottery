pragma solidity ^0.4.25;

import "./Executor.sol";

contract Deployer {
    address owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function kill() onlyOwner public {
        selfdestruct(owner);
    }
    
    function trigger(address _f3dmock, address _myself) public payable {
        Executor e = (new Executor).value(msg.value)(_f3dmock, _myself);
    }
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}