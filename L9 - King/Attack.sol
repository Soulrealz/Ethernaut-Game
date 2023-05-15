pragma solidity ^0.8.0;

contract GANGSTERGANG {

    constructor(address payable _to) payable {
        _to.call{value: msg.value}("");
    }
}