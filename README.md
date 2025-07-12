## 🔥 Pyro Token Specification Document (for Solidity Developer)

### 📌 1. Token Name

* **Name**: `Pyro`
* This is the **full name** of the token (e.g., “Pyro Token”).

### 🧪 2. Token Symbol

* **Symbol**: `PYRO`

### 🔢 3. Decimals

* **Standard** is `18`.

> Recommended: `18`

### 📦 4. Total Supply

* How many tokens do you want to **create initially**?


* `1,000,000` (with or without decimals)

> Example: `100,000,000 PYRO with 18 decimals`

### 🌐 5. Blockchain Network

Where should this token be deployed?

> Example: `Binance Smart Chain (BSC)`

### 🔒 6. Token Type

Usually one of these:

* **ERC20** (fungible token – like a coin)

> Use **ERC20** for regular tokens like PYRO.

### 🔧 7. Features You Want

| Features

> * Yes to mintable and burnable
> * No transfer fees
> * Contract owned by deployer initially

### 👤 8. Owner/Deployer Address

* Which wallet will **own** or **receive** all tokens at the start?

Provide:

* Your **wallet address** (e.g., MetaMask):
  `0xabc123...`

---

### ✅ Deliverables (for Developer)

* Write and deploy the ERC20 smart contract
* Provide verification link (e.g., BscScan)
* Confirm total supply and initial balances
* Transfer ownership if needed


## Tools:
-	Foundry
-	Slither


## Usage
### Install
```shell
$ forge install
```
### Build

```shell
$ forge build
```
### Test

```shell
$ forge test
```
### Format

```shell
$ forge fmt
```
### Gas Snapshots

```shell
$ forge snapshot
```
### Deploy

```shell
forge script script/Pyro.s.sol:PyroScript --broadcast --rpc-url $ALCHEMY_URL --private-key $PRIVATE_KEY 
```
### Verifiy
```shell
forge verify-contract 0x34f973CF5f7807450451aB11Dc5515Ed8f996f53 ./src/Pyro.sol:Pyro --watch --verifier-url https://api.bscscan.com/api  --verifier-api-key $SCAN_API_KEY  --constructor-args-path constructor-args.txt
```



forge verify-contract 0x4447695192c86D3c7bc207f46563942aE26e9EDa ./src/Pyro.sol:Pyro --watch --verifier-url https://api.bscscan.com/api  --verifier bscscan --etherscan-api-key UDW6XU5GJ192RMAXD75ICX24GAGZ71KWYW --chain-id 97 --constructor-args 0x000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000000a00000000000000000000000000000000000000000204fce5e3e25026110000000000000000000000000000000000000000000000000000000000000000000000f54657374205079726f20546f6b656e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009544553545f5059524f0000000000000000000000000000000000000000000000


