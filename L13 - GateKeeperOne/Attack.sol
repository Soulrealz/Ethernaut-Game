pragma solidity ^0.8.0;

contract CrackLvl {
    function enter(address _target, uint gas) external {
        GatekeeperOne target = GatekeeperOne(_target);

        uint16 thirdReq = uint16(uint160(tx.origin));
        uint64 firstsecondReq = uint64(1 << 63) + uint64(thirdReq);
        bytes8 key = bytes8(firstsecondReq);    
        
        require(gas < 8191, "gas >= 8191");
        //2nd requirement is met by submiting gas = 256 u have to try a lot of times in order to guess this one or write a test for it
        require(target.enter{gas: 8191*10+gas}(key), "failed");
    }
}
