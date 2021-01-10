pragma solidity >= 0.6.0;

import "./IAuthRoot.sol";
import "./IAuthWallet.sol";

contract Index {

    IAuthRoot public _root;
    IAuthWallet public _wallet;

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

    constructor() public acceptOnlyOwner {
    }

    function setRoot(address root) public acceptOnlyOwner {
        _root = IAuthRoot(root);
    }

    function getName() public acceptOnlyOwner /*returns (bytes value)*/ {
        _root.getName();
    }

    function action() public {
//        _root.deny(dest, rightId, grams);
    }

    function sendAllMoney(address dest_addr) public acceptOnlyOwner {
        selfdestruct(dest_addr);
        tvm.exit();
        // I doubt we need it
    }

    function unique(TvmCell uniquec) public view acceptOnlyOwner {
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
