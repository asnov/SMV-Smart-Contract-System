pragma solidity >= 0.6.0;

interface IAuthWallet {

    function accept(
        uint256 rightId
    ) public;

    function deny(
        uint256 rightId
    ) public;

    function destroy(
    ) public;

    function getName(
    ) public returns (bytes value0);

    function getSymbol(
    ) public returns (bytes value0);

    function getWalletKey(
    ) public returns (uint256 value0);

    function getRootAddress(
    ) public returns (address value0);

    function getRightsCount(
    ) public returns (uint256 value0);

    function getRightByIndex(
        uint256 index
    ) public returns (uint256 value0);

    function getRights(
    ) public returns (uint256[] value0);

}
