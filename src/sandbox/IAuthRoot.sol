pragma solidity >= 0.6.0;

interface IAuthRoot {

    function constructor1(
        bytes name,
        bytes symbol,
        uint256 root_public_key,
        uint256 root_owner,
        TvmCell wallet_code
    ) external;

    function deployWallet(
        uint32 _answer_id,
        int8 workchain_id,
        uint256 pubkey,
        uint256 rightId,
        uint256 grams
    ) external returns (address value0);

    function deployEmptyWallet(
        uint32 _answer_id,
        int8 workchain_id,
        uint256 pubkey,
        uint256 grams
    ) external returns (address value0);

    function grant(
        address dest,
        uint256 rightId,
        uint256 grams
    ) external;

    function deny(
        address dest,
        uint256 rightId,
        uint256 grams
    ) external;

    function destroyWallet(
        address dest,
        uint256 grams
    ) external;

    function destroyRoot(
        address dest
    ) external;

    function getName(
    ) external returns (bytes value0);

    function getSymbol(
    ) external returns (bytes value0);

    function getRootKey(
    ) external returns (uint256 value0);

    function getWalletCode(
    ) external returns (TvmCell value0);

    function getWalletAddress(
        int8 workchain_id,
        uint256 pubkey
    ) external returns (address value0);

}
