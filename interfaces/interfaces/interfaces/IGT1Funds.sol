// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IGT1Funds
/// @notice Asset-agnostic fund accounting (Liquidity, Stability, System) in USD-equivalent.
/// @dev Funds are computed via oracles; supported assets: USDT/USDC/DAI (extendable).
interface IGT1Funds {
    /// @notice Fund identifiers.
    enum Fund {
        Liquidity,
        Stability,
        System
    }

    /// @notice Returns USD-equivalent value of a fund (18 decimals), using eligible assets only where applicable.
    function fundUsdValue(Fund fund) external view returns (uint256 usdE18);

    /// @notice Returns USD-equivalent value of a fund for a specific asset (18 decimals).
    function fundAssetUsdValue(Fund fund, address asset) external view returns (uint256 usdE18);

    /// @notice Returns current total USD-equivalent balances used for coverage calculations (eligible assets only).
    function stabilityCoverageUsdValue() external view returns (uint256 usdE18);

    /// @notice Returns current total liquidity USD-equivalent value.
    function liquidityUsdValue() external view returns (uint256 usdE18);

    /// @notice Returns current total system USD-equivalent value.
    function systemUsdValue() external view returns (uint256 usdE18);
}
