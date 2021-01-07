pragma solidity >= 0.6.0;

interface IAuthRoot {

    function deployWallet(
        uint32 _answer_id,
        int8 workchain_id,
        uint256 pubkey,
        uint256 rightId,
        uint256 grams
    ) public returns (address value0);

    function deployEmptyWallet(
        uint32 _answer_id,
        int8 workchain_id,
        uint256 pubkey,
        uint256 grams
    ) public returns (address value0);

    function grant(
        address dest,
        uint256 rightId,
        uint256 grams
    ) public;

    function deny(
        address dest,
        uint256 rightId,
        uint256 grams
    ) public;

    function destroyWallet(
        address dest,
        uint256 grams
    ) public;

    function destroyRoot(
        address dest
    ) public;

    function getName(
    ) public returns (bytes value0);

    function getSymbol(
    ) public returns (bytes value0);

    function getRootKey(
    ) public returns (uint256 value0);

    function getWalletCode(
    ) public returns (cell value0);

    function getWalletAddress(
        int8 workchain_id,
        uint256 pubkey
    ) public returns (address value0);

}
