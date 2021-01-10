pragma solidity >= 0.6.0;

interface IAuthWallet {

    function accept(
        uint256 rightId
    ) external;

    function deny(
        uint256 rightId
    ) external;

    function destroy(
    ) external;

    function getName(
    ) external returns (bytes value0);

    function getSymbol(
    ) external returns (bytes value0);

    function getWalletKey(
    ) external returns (uint256 value0);

    function getRootAddress(
    ) external returns (address value0);

    function getRightsCount(
    ) external returns (uint256 value0);

    function getRightByIndex(
        uint256 index
    ) external returns (uint256 value0);

    function getRights(
    ) external returns (uint256[] value0);

}
