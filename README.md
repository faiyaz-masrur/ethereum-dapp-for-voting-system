# 🗳️ Ethereum DApp for Voting System

A decentralized voting application built using Ethereum smart contracts. This DApp allows users to vote for candidates in a secure, transparent, and tamper-proof way using blockchain technology.

## 📌 Introduction

In traditional voting systems, central authorities are responsible for managing and counting votes, which can lead to issues like vote manipulation, lack of transparency, and single points of failure. To address these problems, this project introduces a **blockchain-based voting system** where each vote is recorded as a transaction on the Ethereum blockchain, making the process transparent, immutable, and auditable by anyone.

This project is a full-stack **Decentralized Application (DApp)** that combines smart contracts written in **Solidity**, which holds the system's logic and protocols, a local blockchain environment via **Ganache**, a non-custodial wallet **Metamask** that acts as a bridge between the user's browser and the Ethereum blockchain which stores user's Ether and manage accounts, and a responsive front-end powered by **Web3.js** and **JavaScript**. By removing central authority control and leveraging Ethereum's decentralized infrastructure, the system ensures that:

- Only authorized users can vote
- Each user can only vote once
- The vote count cannot be tampered with
- The results are fully transparent and accessible to all participants

This DApp is ideal for educational purposes, blockchain development learning, or prototyping secure online voting solutions for communities, organizations, or small-scale elections.  

## ✨ Features

- 📝 Register multiple candidates
- 👥 Allow only one vote per user
- ⛓️ Store all data on the Ethereum blockchain
- 🔍 Real-time vote counting and updates
- 🛡️ Secure and transparent voting process
- 🌐 Web-based UI for interaction

## 🖥️ Application Interface
  ![Application interface view](https://github.com/faiyaz-masrur/ethereum-dapp-for-voting-system/blob/d1379d78904590eb4416c984433cb924f891fec6/image12.png)

## 🚀 Getting Started

Follow these steps to run the project locally on your machine. _(Linux Environment)_

### ✅ Prerequisites

- [Node.js](https://nodejs.org/) (v14 or later recommended)
- [Ganache](https://trufflesuite.com/ganache/) (for local Ethereum blockchain)
- [Truffle](https://trufflesuite.com/docs/truffle/) (`npm install -g truffle`)
- [MetaMask](https://metamask.io/) (for connecting to the DApp in the browser)

### 📦 Environment Setup 
The first step is to set up Truffle, Ganache, and Metamsk

1. To set up truffle, it is recommended to use Node Version Manager (nvm); otherwise, you may get an error doing it. To install nvm, issue the command on your terminal:
  ```
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
  ```
  If you do not have curl installed, issue the command: `sudo apt install curl` and then use the above command again.  

  - Once the nvm is installed, use the command: `nvm install 22.17.1`. This will install the node version: `22.17.1`. After that, you should restart your terminal (close and reopen) and then run the command: `node -v`, and this will return the version of Node we just installed.
    
  - Now to make the node version `22.17.1` as your default node version, run: `nvm alias default 22.17.1`. Close and reopen the terminal from the previous directory. Now, check the node version again using: `node -v`. You should see something like: `v22.17.1`
     
  - Then install truffle using command: `npm install -g truffle`, and after installation, check its version using: `truffle version`. This will return some of the packages and libraries with the version that truffle comes with.
     
2. Next, we will install Ganache by downloading it. The link is given above. But before installing Ganache, we need some additional tools. To install the additional tools, run the command below:
  ```
  sudo add-apt-repository universe && sudo apt install libfuse2
  ```

  - After downloading Ganache, right click on the **Ganache file** and click the **Properties** option. From there, choose the **Permissions** tab. Tick the **“Allow executing file as a program”** option. Now the file is ready to be executed by a double click.

  - After a double click, ganache will be loaded. Click the quick run option, and you will see a dashboard of a private network with some pre-funded accounts. However, at first you need to pay attention to change the port. To do that, go to **settings > server** and change the port to `8545`, save & restart it. Next, you will see the following ganache GUI, and on the top of the ganache dashboard, you should see the **RPC Server** of ganache as `http://127.0.0.1:8545`.  
  **Note:** While starting, you can create a new workspace, so that in the future you can start from where you left.  

3. Install the MetaMask extension for your preferred browser from the above link and connect to a private network. This will allow Metamask to connect to the local ganache network instead of the Main-net or Test-net.

  - In the upper left corner of Metamask, click the network you're currently connected to. This will show the currently available **mainnet** and **testnet**. Select **"Add network"**.

  - Once you click it, a new browser tab will open and you will find an option **"Add Network Manually"** at the bottom. Click that option.

  - Enter the values mentioned below. Make sure your ganache **"RPC Server"** and **"New RPC Server"** is same.

    * Enter your network name as below: `localhost:8545`

    * RPC URL is the RPC server url of ganache. 

    * Network chain ID `1337` is the default chain ID. (FYI, here hexadecimal format is also supported)

    * Currency symbol `ETH`. This is a dummy currency identifier.
   
  - Now choose the private network by selecting the `localhost:8545` or `127.0.0.1:8545` option.

  - Now, go to the Ganache window, click the **key icon** of the third or fourth account, and copy the **private key** to import the account on Metmask.

  - In Metamask, click **Import Account** option. Once prompted, paste the private key and click the **Import** button. This will add the selected account from Ganache on Metamask. You can also see the same account address with a dummy balance of 100 currency in both Ganache and Metamask.

### 📡⚡ Run dapp locally

  1. Clone or download [https://github.com/faiyaz-masrur/ethereum-dapp-for-voting-system.git](https://github.com/faiyaz-masrur/ethereum-dapp-for-voting-system.git) the project in your local machine.

  2. Inside the project run:
  ```
  truffle migrate
  ```
  This will migrate the contract to the blockchain.  

  3. Start your development server using the following command:
  ```
  npm run dev
  ```
  It will create a web server at port `3000` and will automatically launch the service in the default browser as `localhost:3000`.  

  4. Make sure Metamask is there in your browser. After launching first, your Metamask will pop up to establish a connection. If the connection is established, you should see a green text mentioning **“connected”** or a **Green Dot** in the Metamask.
 
