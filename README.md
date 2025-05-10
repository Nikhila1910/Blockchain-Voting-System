# Blockchain-Based Voting System

A decentralized voting application built on Ethereum blockchain technology that allows for secure, transparent, and tamper-proof voting.

## Project Overview

This voting system leverages blockchain technology to create a secure and transparent voting platform. The application consists of a smart contract deployed on an Ethereum network, a backend server that interacts with the blockchain, and a frontend interface for users to cast their votes.

## Features

- Secure voting using Ethereum blockchain
- Prevention of double voting through address tracking
- Real-time vote counting and results
- User-friendly interface for casting votes
- Admin panel for monitoring the voting process

## Technology Stack

- **Blockchain**: Ethereum (Solidity)
- **Backend**: Node.js, Express.js
- **Frontend**: HTML, CSS, JavaScript
- **Web3 Integration**: Web3.js
- **Development Environment**: Truffle, Ganache

## Prerequisites

- Node.js (v14 or higher)
- Ganache (for local blockchain)
- Truffle (for smart contract deployment)
- MetaMask (or any Ethereum wallet)

## Installation and Setup

1. Clone the repository:
   ```
   git clone <repository-url>
   cd voting-system
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Start Ganache (local blockchain):
   - Open Ganache and create a new workspace
   - Configure it to run on port 7545

4. Deploy the smart contract:
   ```
   truffle migrate --reset
   ```

5. Update the contract address in `backend/server.js` with the newly deployed contract address

6. Start the server:
   ```
   node server.js
   ```

7. Access the application:
   - Open your browser and navigate to `http://localhost:8080`

## Usage

### Voter Interface
1. Connect your Ethereum wallet (e.g., MetaMask)
2. View the list of candidates
3. Select a candidate and cast your vote
4. View real-time voting results

### Admin Interface
1. Access the admin panel at `http://localhost:8080/frontend/admin.html`
2. Monitor voting progress
3. View detailed voting statistics

## Project Structure

- `contracts/`: Contains Solidity smart contracts
- `migrations/`: Truffle migration files
- `backend/`: Server-side code for blockchain interaction
- `frontend/`: User interface files
- `public/`: Static assets and client-side scripts
- `test/`: Smart contract tests

## Smart Contract

The `Voting.sol` contract implements the core voting functionality:
- Candidate registration
- Vote casting with duplicate prevention
- Vote counting and validation

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Authors

- Nikhila
- Karthik Reddy
- Sadwik Reddy

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Ethereum community
- Truffle Suite
- Web3.js contributors# Blockchain-Voting-System
