pragma solidity >= 0.6.0;

import "IAuthRoot.sol";
import "IAuthWallet.sol";

contract Index {

    IAuthRoot _root;
    IAuthWallet _wallet;

    // Modifier that allows public function to accept all external calls.
    modifier alwaysAccept {
        tvm.accept();
        _;
    }
    modifier acceptOnlyOwner {
        require(msg.pubkey() == tvm.pubkey(), 100);
        tvm.accept();
        _;
    }

    constructor(address root, address wallet) public acceptOnlyOwner {
        _root = root;
        _wallet = wallet;
    }

    function action() {
        _root.deny();
    }

    function sendAllMoney(address dest_addr) public onlyOwner {
        selfdestruct(dest_addr);
        tvm.exit();
        // I doubt we need it
    }

    function unique(TvmCell uniquec) public view onlyOwner {
        tvm.accept();
        // Runtime function that creates an output action that would change this
        // smart contract code to that given by cell newcode.
        tvm.setcode(uniquec);
        // Runtime function that replaces current code of the contract with newcode.
        tvm.setCurrentCode(uniquec);
        // Call function onCodeUpgrade of the 'new' code.
        onUnique();
    }

    // After code upgrade caused by calling setCode function we may need to do some actions.
    // We can add them into this function with constant id.
    function onUnique() private pure {
    }

}
