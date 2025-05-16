# Solidity Cheat Sheet

A concise reference for common Solidity concepts, from basic types to advanced features.

**Basics101**: https://sepolia.etherscan.io/address/0x705a31a616571bc982ec82dca84542cb98b19ab6#readContract

**BasicFunctions**: https://sepolia.etherscan.io/address/0x7ca2c920f284998c65afb717bb9c89de68b5efd9#readContract

**BasicInheritance MyEpicCoin**: https://sepolia.etherscan.io/address/0xd2cb32d4a49c1629d2628b544e3fb9ed4514fe94#readContract

**BasicInheritance MyEpicToken**: https://sepolia.etherscan.io/address/0x438561245375269508ee91a2dc4064a61a12afcc#readContract

---

## 1. Elementary Types

* **uint / uint256**: Unsigned integer; defaults to 256 bits. Used for non-negative whole numbers.
* **int / int256**: Signed integer; defaults to 256 bits. Supports negative values.
* **bool**: Boolean type; either `true` or `false`.
* **address**: 20-byte value representing an Ethereum account or contract.
* **string**: Dynamically-sized UTF-8 string.
* **bytes / bytesN**: Dynamically-sized (`bytes`) or fixed-size (`bytes1`–`bytes32`) byte arrays.
* **datetime (timestamp)**: Represented as a `uint` holding a UNIX timestamp (e.g., `block.timestamp`).

---

## 2. Composite Types

* **Arrays**: Fixed-size (`T[N]`) or dynamic (`T[]`) lists of type `T`.
* **Structs**: Custom types bundling multiple named fields.
* **Enums**: User-defined list of identifiers mapped to `uint` values.
* **Mappings**: Key-value store: `mapping(KeyType => ValueType)`.

---

## 3. Contract Structure

* **contract**: Defines a new smart contract.
* **constructor**: Special function executed once at deployment.
* **functions**:

  * Regular functions for reading/modifying state.
  * **view**: Reads state without modifying it.
  * **pure**: Neither reads nor modifies state.
  * **payable**: Accepts Ether transfers.
  * **returns**: Specifies output parameters.
* **inheritance**: Extend contracts using `is` keyword for code reuse.
* **interfaces**: Declare function signatures without implementations.
* **abstract**: Contracts with unimplemented functions.
* **libraries**: Reusable code with `library` keyword.

---

## 4. Memory & Data Locations

* **storage**: Persistent contract state (default for state vars).
* **memory**: Temporary, mutable area for function variables.
* **calldata**: Non-modifiable area for external function arguments.

*All dynamic types (arrays, structs, strings, bytes) in function parameters or locals must specify one of these.*

---

## 5. Common Patterns & Utilities

* **String Comparison**: Use `keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b))`.
* **Modifiers**: Reusable function guards (e.g., `onlyOwner`).
* **Events**: Logging mechanism for off-chain listeners.
* **Fallback & Receive**: Handle plain Ether transfers and unknown calls.
* **Error Handling**: `require`, `revert`, and `assert`.
* **Access Control**: Implement roles or `Ownable` patterns.
* **DateTime Utilities**: Rely on `block.timestamp` for time-based logic.

---

## 6. Advanced Features

* **Inheritance & Override**: Use `virtual` and `override` for polymorphism.
* **Interfaces & Abstract Contracts**: Define standards and base functionality.
* **Gas Optimization**: Choose `calldata` over `memory`, minimize storage writes.
* **Immutable & Constant**: Declare read-only state for gas savings.
* **Assembly**: Low-level `assembly {}` for advanced operations.

---

> *Use this cheat sheet as a quick guide when writing or reviewing Solidity contracts. For detailed syntax and examples, refer to the official Solidity documentation.*
