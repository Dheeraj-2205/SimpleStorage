# Solidity Bascis Projects 

Practice projects built while learning Solidity through 
Cyfrin Updraft - following to Beginner to Security Auditor Path.

## Tech Stack 
- Solidity ^0.8.26
- REmix IDE

---

## Projects

### 01 - SimpleStorage 
Store and receive a favourite number with owner-only access control.

**Concepts Practiced: **
- State Variable
- Functions
- Constructor
- Immutable variables
- Access control with `require`

---

### 02 - NameStorage
Store names mapped to wallet addresses with owner-only write access

**Concepts Practiced: ** 
- `mapping(address => String)`
- String data type
- Owner Pattern
- Type safety (e.g address and string)

---

### 03 - Counter
Increament, decreament , and reset a counter with owner-only reset.

** Concepts Practiced: **
- Custom `modifier`
- uint256 underflow protection
- Access control
- Reusable guards 

---

### 04 - SimpleVoting
A voting system where owner add candidates and users vote once.

** Concepts Practiced **
- `struct`
- Dynamic arrays
- `mapping(address => bool)`
- Multiple modifiers
- Input Validation 

---
### 05 - EthPiggyBank
A samrt contract piggy bank where anyone can deposits ETH,
but only the owner can withdraw all funds


| Deposits | Anyone can deposit ETH |
| Withdraw | Only owner can withdraw |
| Balance Check | Anyone can check their own balance |
| Total Balance | Check total ETH in contract |

** Concepts Practiced **
- `payable` functions - receiving ETH
- `msg.value` - amount of ETH sent
- `address(this).balance` - contract's total ETH
- `.call{value:amount} - sending ETH safely
- `immutable` variables - gas optimization 


## Security Concepts Practiced
- Access Control - `onlyOwner` pattern
- Input Validation - `require` statements
- Custom Modifiers - Reusable guards
- Type Safety - Preventing type mismatches
- Balance is set to zero before transferring ETH to prevent `reentrancy attacks`.

## About

Currently learning Solidity and Smart Contract Security through Cyfrin Updraft - working towards becoming a Smart Contract Security Auditor

Courses completed:
- [x] Blockchain basics
- [x] Solidity Smart Contract Development
- [] Foundry Fundamentals (in progress)
- [] Smart Contract Security & Auditing



