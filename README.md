# Onion-Chain-Messenger
This project is a functional, decentralized messaging application (dApp) that demonstrates the core principles of Web3. It uses an Ethereum smart contract to store messages on a blockchain, ensuring a tamper-proof and decentralized ledger. The front-end is built with React, allowing users to interact with the blockchain via MetaMask.
This project serves as the practical implementation of the concepts discussed in the "Onion Chain Messenger" research paper.

Disclaimer: This is an educational tool to demonstrate Web3 technology. It does not implement onion routing and should not be considered a fully secure or anonymous communication method. All messages are publicly readable on the blockchain.

# Features
- Decentralized Backend: Uses a custom Solidity smart contract deployed on an Ethereum-based blockchain.

- Wallet Integration: Connects to the user's Ethereum wallet (MetaMask) to manage their identity and sign transactions.

- Message Sending: Allows users to send messages to any other Ethereum address. Each message is a transaction recorded on the blockchain.

- Message Receiving: Fetches and displays all messages sent to the connected user's address from the smart contract.

- Modern UI: A clean, responsive user interface built with React and styled with Tailwind CSS.

# Tech Stack
1. Smart Contract: Solidity

2. Blockchain: Ethereum (local development via Ganache)

3. Development Suite: Truffle

4. Front-End: React.js

5. Web3 Integration: web3.js, MetaMask

6. Styling: Tailwind CSS

# Prerequisites
You must have the following software installed to run this project:

- Node.js & npm: https://nodejs.org/

- Ganache: A personal blockchain for local development. https://www.trufflesuite.com/ganache

- Truffle: A development environment for Ethereum. Install globally: npm install -g truffle

- MetaMask: A browser extension that acts as your Ethereum wallet. https://metamask.io/

# How to Run
Clone the repository:

git clone [https://github.com/your-username/onion-chain-messenger.git](https://github.com/your-username/onion-chain-messenger.git)
cd onion-chain-messenger

Install project dependencies:

npm install

Start Ganache:
Open the Ganache application. It will start a local blockchain, typically on http://127.0.0.1:7545.

Configure MetaMask:

Open MetaMask in your browser.

Click on the network dropdown and select "Add Network."

Add a new network with the following details:

Network Name: Ganache

New RPC URL: http://127.0.0.1:7545

Chain ID: 1337

Currency Symbol: ETH

Import an account from Ganache into MetaMask using one of the private keys provided by Ganache.

Compile and Deploy the Smart Contract:
In your terminal, at the root of the project, run:

truffle migrate --reset

This command will compile your Solidity contract and deploy it to your running Ganache instance.

Set up the Front-End:
Truffle places the compiled contract information (the ABI) in the client/src/contracts directory automatically.

Start the React App:

cd client
npm start

Your browser should open to http://localhost:3000, and you will see the dApp. MetaMask will likely ask you to connect your account.

# How to Use the dApp
To simulate a conversation, you can import two different accounts from Ganache into MetaMask.

Open the dApp in two different browser tabs or windows.

In each tab, connect to a different MetaMask account.

Copy the address from one account and use it as the "Recipient Address" in the other tab to send a message.

Click "Refresh" to see your new messages appear.
