# GT 1.0 — Formular Standard

GT 1.0 Formular Standard defines the protocol-level specification for the Grand Time
time-based economic system.

This repository contains the formal standard intended for:
- developer implementation,
- security review and auditing,
- independent verification of protocol rules.

## Scope
The GT 1.0 Formular Standard specifies:
- multi-asset liquidity handling (USDT, USDC, DAI; extendable),
- asset-agnostic funds calculated in USD-equivalent via oracles,
- emergency asset segregation without price or mint disruption,
- zero protocol fees on stablecoin deposit and redeem (gas only),
- 333-day stability guarantee,
- mint coverage gates with valuation pause and Time Capital redirection,
- bonding premium caps and small-purchase pricing rules.

## Non-Goals
This repository does NOT:
- provide an investment offer,
- promise financial returns,
- publish production deployment addresses.

## Structure
- `/spec` — formal protocol specifications (GT1-FS series)
- `/interfaces` — contract interfaces
- `/contracts` — reference implementations
- `/test` — invariant, fuzz, and scenario tests

## Status
GT 1.0 Formular Standard — **Active (Specification Phase)**

Implementation follows this specification.
