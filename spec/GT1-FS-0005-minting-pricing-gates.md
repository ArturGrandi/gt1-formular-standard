# GT1-FS-0005 — Minting and Pricing Gates

**Standard:** GT 1.0 Formular Standard  
**Status:** Active  
**Category:** Valuation / Pricing Controls

This document defines the minting logic, valuation pause conditions,
pricing constraints, and premium limits under GT 1.0.

---

## 1. Zero Protocol Fees

Protocol fees on stablecoin deposit and redeem are fixed at **0%**.
Only network gas costs apply.

---

## 2. Stability Guarantee

GT 1.0 enforces a **333-day stability guarantee** as a protocol invariant.
This guarantee constrains valuation behavior and mint issuance
but does not imply fixed price guarantees.

---

## 3. Mint Coverage Gate (Binding Rule)

Valuation is subject to a mandatory coverage gate.

### Condition

Valuation pauses when the following condition is met: F_stab < P × M

Where:
- `F_stab` — Stability Fund (USD-equivalent, eligible assets only)
- `P` — current protocol reference price
- `M` — daily mint amount

### Action

When the condition is met:
- valuation issuance **pauses**,
- daily mint is **redirected to Time Capital**,
- protocol price **does not decrease**.

Mint redirection continues until coverage is restored.

---

## 4. Time Capital Accumulation

Time Capital is a protocol ledger destination that accumulates
daily mint during valuation pauses.

Accumulated Time Capital may be released or utilized only
according to GT 1.0 protocol rules.

---

## 5. Pricing Constraints

### Bonding Premium Cap

Bonding premiums are capped at a maximum of **44%**.

### Small Purchase Rule

Purchases of size **≤ 111 daily shares** are priced at: P_next_min

Larger purchases follow bonding logic subject to the premium cap.

---

## 6. Safety Properties

The above rules are designed to ensure that:
- insufficient coverage does not trigger reflexive price drops,
- valuation pauses preserve system stability,
- small participants are protected from excessive premiums.
