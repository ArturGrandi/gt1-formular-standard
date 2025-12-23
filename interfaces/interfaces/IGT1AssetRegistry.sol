// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IGT1AssetRegistry
/// @notice Registry for supported assets and emergency exclusion (freeze/oracle-fail).
interface IGT1AssetRegistry {
    /// @notice Emitted when an asset is enabled/disabled for deposits.
    event AssetSupportUpdated(address indexed asset, bool supported);

    /// @notice Emitted when an asset is excluded/included for CR/SR calculations.
    event AssetEligibilityUpdated(address indexed asset, bool eligibleForCoverage);

    /// @notice Returns true if `asset` is supported for user deposits/redeems.
    function isSupported(address asset) external view returns (bool);

    /// @notice Returns true if `asset` is eligible in coverage calculations (CR/SR).
    /// @dev Emergency rule: frozen/oracle-failed assets become ineligible without affecting price/mint logic.
    function isEligibleForCoverage(address asset) external view returns (bool);

    /// @notice Lists all supported assets (may include temporarily ineligible assets).
    function supportedAssets() external view returns (address[] memory);

    /// @notice Lists assets eligible for coverage calculations.
    function coverageEligibleAssets() external view returns (address[] memory);
}
