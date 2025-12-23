// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IGT1OracleAdapter
/// @notice USD-equivalent oracle adapter used by GT 1.0 for asset-agnostic fund accounting.
/// @dev Returns price in USD with 18 decimals (1 USD = 1e18).
interface IGT1OracleAdapter {
    /// @notice Returns the USD price of `asset` (18 decimals).
    /// @dev MUST revert if price is stale/invalid/unavailable.
    function getUsdPrice(address asset) external view returns (uint256 priceE18);

    /// @notice Returns true if `asset` currently has a valid oracle price.
    /// @dev Used for emergency exclusion from CR/SR calculations.
    function isOracleValid(address asset) external view returns (bool);

    /// @notice Optional freshness parameter for off-chain inspection.
    function maxStaleness() external view returns (uint256);
}
