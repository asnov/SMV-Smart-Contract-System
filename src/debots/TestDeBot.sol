pragma solidity >=0.6.0;
pragma AbiHeader expire;
pragma AbiHeader time;
pragma AbiHeader pubkey;

import "./Debot.sol";

contract TestDeBot is Debot, DError {

    // Debot context ids
    uint8 constant STATE_FIRST_STEP = 0;

    // helper modifier
    modifier accept() {
        tvm.accept();
        _;
    }

    /*
     *   Init functions
     */

    constructor(uint8 options, string debotAbi, string targetAbi, address targetAddr) public acceptOnlyOwner {
        init(options, debotAbi, targetAbi, targetAddr);
    }

    /*
     *  Overrided Debot functions
     */

    function fetch() public override accept returns (Context[] contexts) {
        //        contexts = [];

        // Zero state: work with existing wallet or deploy new one.
        contexts.push(Context(STATE_ZERO,
            "Hello World! I am the test debot. I'll help you to ...", [
            ActionPrint("Option one", "Now i need ... . Enter something ...", STATE_PREV),
            ActionPrint("Quit", "Goodbye, come again when you are ready!", STATE_EXIT)
            ]));
    }

    function getVersion() public override accept returns (string name, uint24 semver) {
        name = "Test DeBot";
        semver = (1 << 8) | 1;
    }

    function quit() public override accept {}

    function getErrorDescription(uint32 error) public pure override returns (string desc) {
        if (error == 51) {
            return "Constructor was already called";
        }
        return "unknown error";
    }

}
