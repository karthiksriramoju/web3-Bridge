# Web3 Bridge

## Overview
Web3 Bridge is a **Foundry-based** smart contract project designed to facilitate cross-chain asset transfers. The project includes core bridge contracts that enable seamless interaction between different blockchain networks. 

## Features
- **Cross-chain compatibility**: Supports asset transfers between different chains.
- **Secure bridge contract**: Implements safe and efficient token bridging.
- **ERC-20 token support**: Works with custom tokens such as Wkar and Kar.
- **EVM-compatible bridge**: Supports bridging between EVM-compatible chains.
- **Lock & Mint Mechanism**: Locks KAR tokens on the Ethereum chain and mints WKAR tokens on the base chain.

## Smart Contracts
The core contracts in the `src` directory include:

- **BridgeBase.sol**: Base contract for bridge functionalities.
- **BridgeEth.sol**: Ethereum-specific bridge implementation.
- **Wkar.sol**: Wrapped KAR token contract.
- **Kar.sol**: KAR token contract.

## Getting Started

### Prerequisites
Make sure you have the following installed:
- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- Node.js & npm/yarn (for scripts & interactions)

### Setup & Installation
1. **Clone the repository**:
   ```sh
   git clone https://github.com/karthiksriramoju/web3-Bridge/
   cd web3-Bridge
   ```
2. **Install Foundry** (if not installed):
   ```sh
   curl -L https://foundry.paradigm.xyz | bash
   foundryup
   ```
3. **Build the project**:
   ```sh
   forge build
   ```
4. **Run tests**:
   ```sh
   forge test
   ```

## Deployment
To deploy the contracts on a local or testnet environment:
```sh
forge script script/Deploy.s.sol --rpc-url <RPC_URL> --private-key <PRIVATE_KEY> --broadcast
```
Replace `<RPC_URL>` and `<PRIVATE_KEY>` with your respective values.

## Contributing
Pull requests are welcome! Ensure your code follows best practices and includes test coverage.

## License
This project is licensed under the MIT License.
