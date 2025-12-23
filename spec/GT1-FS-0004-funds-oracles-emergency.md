# GT1-FS-0004 — Funds, Oracles, and Emergency Segregation

**Standard:** GT 1.0 Formular Standard  
**Status:** Active  
**Category:** Protocol Economics / Risk Controls

This document defines the rules governing protocol funds,
oracle usage, and emergency asset segregation under GT 1.0.

---

## 1. Multi-Asset Fund Model

GT 1.0 operates a multi-asset fund architecture where protocol funds
may hold balances across multiple supported assets.

Initial supported assets:
- USDT
- USDC
- DAI

The asset set is extendable subject to oracle availability
and protocol governance rules.

---

## 2. Asset-Agnostic Constraints (USD-Equivalent)

While balances may be tracked per asset, all protocol constraints
and coverage ratios are enforced using **USD-equivalent values**
derived from oracle pricing.

This applies to all protocol funds:
- Liquidity Fund (`F_liq`)
- Stability Fund (`F_stab`)
- System Fund (`F_sys`)

---

## 3. Oracle Requirements

Oracles provide USD-equivalent pricing and must satisfy protocol
validity conditions, including but not limited to:
- freshness,
- non-zero price,
- bounded deviation.

An asset is considered **oracle-failed** when its oracle feed
violates validity conditions.

---

## 4. Emergency Asset Segregation (Binding Rule)

If a supported asset becomes:
- frozen, or
- oracle-failed,

it is **excluded from coverage and ratio calculations**.

Emergency segregation:
- does not decrease protocol price,
- does not alter mint logic,
- does not retroactively revalue other assets,
- does not halt protocol operation for eligible assets.

Only eligibility for constraint calculations is affected.

---

## 5. Emergency Recovery

When a previously excluded asset regains eligibility
(valid oracle feed and unfrozen status),
it may be re-included in coverage calculations
according to protocol rules.

No retroactive adjustments are performed.
