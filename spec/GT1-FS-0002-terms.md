# GT1-FS-0002 — Terms and Definitions

**Standard:** GT 1.0 Formular Standard  
**Status:** Active  
**Category:** Protocol Definitions

This document defines binding terms and symbols used throughout the
GT 1.0 Formular Standard. All terms herein are normative.

---

## Units and Symbols

### GUCT
**GUCT** is the standardized internal unit/token designation used by
the GT 1.0 Formular Standard.

If earlier drafts referenced alternative symbols, GT 1.0 formally
standardizes on **GUCT** for all protocol documentation.

---

## Assets

### Supported Assets
Assets approved for settlement and liquidity provisioning.
Initial supported set:
- USDT
- USDC
- DAI

The supported asset set is extendable subject to oracle availability
and protocol governance rules.

### Eligible Asset
A supported asset that:
- is not frozen, and
- has a valid, non-failed oracle price feed.

---

## Oracles and Pricing

### USD-Equivalent (USD-eq)
A normalized value representation obtained via oracle pricing,
used to aggregate and constrain protocol funds across multiple assets.

### Oracle-Failed Asset
An asset whose oracle feed is stale, invalid, unavailable,
or otherwise non-compliant with protocol oracle validity rules.

---

## Funds (Asset-Agnostic at Constraint Layer)

### Liquidity Fund (F_liq)
Aggregated USD-equivalent value of protocol liquidity assets
available for operational settlement.

### Stability Fund (F_stab)
Aggregated USD-equivalent value used to enforce mint coverage
and stability constraints.

### System Fund (F_sys)
Aggregated USD-equivalent system reserves governed by protocol rules.

---

## Valuation and Time Capital

### Valuation
The protocol process that recognizes and issues daily mint
according to GT 1.0 rules.

### Valuation Pause
A protocol state in which valuation issuance is temporarily halted
due to insufficient stability coverage.

### Time Capital
A protocol ledger destination that receives daily mint
during periods of valuation pause.

---

## Pricing and Premiums

### Reference Price (P)
The current protocol reference price used in valuation
and coverage calculations.

### P_next_min
The minimum next reference price applied to small purchases.

### Bonding Premium
The additional premium applied during asset acquisition
via the protocol bonding mechanism.

### Premium Cap
The maximum allowable bonding premium, fixed at **44%**.

---

## Purchase Size

### Daily Share
The standardized daily unit used to measure purchase size.

### Small Purchase
A purchase of size **≤ 111 daily shares**, priced at `P_next_min`.
