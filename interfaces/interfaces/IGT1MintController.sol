// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IGT1MintController
/// @notice Mint gates and pricing constraints under GT 1.0.
/// @dev Implements: 333-day stability invariant, mint coverage gate, Time Capital redirection, premium caps.
interface IGT1MintController {
    /// @notice Emitted when valuation is paused/unpaused due to coverage gate.
    event ValuationPaused(bool paused);

    /// @notice Returns current reference price P (18 decimals).
    function priceE18() external view returns (uint256);

    /// @notice Returns daily mint amount M (18 decimals).
    function dailyMintE18() external view returns (uint256);

    /// @notice Returns true if valuation is currently paused due to insufficient coverage.
    function isValuationPaused() external view returns (bool);

    /// @notice Returns the USD-equivalent stability fund value F_stab used for coverage gate checks.
    function stabilityFundUsdE18() external view returns (uint256);

    /// @notice Returns the minimum next price for small purchases (P_next_min).
    function nextMinPriceE18() external view returns (uint256);

    /// @notice Premium cap in basis points (e.g., 4400 = 44%).
    function premiumCapBps() external view returns (uint256);

    /// @notice Small purchase threshold in "daily shares" units.
    function smallPurchaseThresholdDailyShares() external view returns (uint256);
}
