# GT1-FS-0001 — Overview

**Standard:** GT 1.0 Formular Standard  
**Status:** Active  
**Category:** Protocol Specification  
**Layer:** Economic / On-chain Architecture

## Purpose
This document defines the high-level structure and binding principles of the
GT 1.0 Formular Standard. It establishes the protocol’s scope, guarantees,
and invariants prior to implementation.

GT 1.0 is designed to operate as a time-based economic protocol with
deterministic rules enforced on-chain.

## Binding Architectural Principles

### 1. Multi-Asset Liquidity
The protocol supports multiple settlement and liquidity assets.
Initial supported assets include:
- USDT
- USDC
- DAI

The asset set is extendable subject to oracle availability and protocol rules.

### 2. Asset-Agnostic Funds (USD-Equivalent)
All protocol funds are calculated in USD-equivalent using oracle prices.
Funds are asset-agnostic at the constraint layer, even though balances
may be tracked per asset.

The protocol defines the following funds:
- Liquidity Fund (`F_liq`)
- Stability Fund (`F_stab`)
- System Fund (`F_sys`)

### 3. Emergency Asset Segregation
If a supported asset becomes frozen or oracle-failed, it is excluded from
coverage and ratio calculations.

Emergency segregation:
- does not decrease price,
- does not alter mint logic,
- does not retroactively revalue other assets.

### 4. Zero Protocol Fees
Protocol fees on stablecoin deposit and redeem are set to **0%**
(excluding network gas costs).

### 5. Stability Guarantee
GT 1.0 maintains a **333-day stability guarantee** as a binding protocol target.

### 6. Mint Coverage Gate
Valuation is subject to a coverage gate:
- If `F_stab < P * M`, valuation pauses.
- Daily mint is redirected to Time Capital.
- Price remains unchanged during valuation pause.

### 7. Pricing Constraints
- Bonding premiums are capped at **44% maximum**.
- Purchases of size ≤ **111 daily shares** are priced at `P_next_min`.

## Non-Goals
This standard does not:
- define investment products,
- promise financial returns,
- publish deployment addresses,
- prescribe UI or off-chain services.

## Relation to Other Documents
This overview is binding and is elaborated by subsequent GT1-FS documents:
- GT1-FS-0002 — Terms and Definitions
- GT1-FS-0004 — Funds, Oracles, Emergency Rules
- GT1-FS-0005 — Minting and Pricing Gates
