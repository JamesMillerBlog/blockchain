To start: truffle migrate --compile-all --reset --network ganache
Access Ganache console: truffle console --network ganache
  - Get transaction data in console:
  web3.eth.getTransaction("0x75df599669ee9670758d915b8db6e463165673af5f5e785ed48a321af6c2ebcb")
  - Get block data in console: web3.eth.getBlock("0xeaaac2f8c56403c82daa6f14b044bbbc568ad718eb66b6853dbb15d19254fe2a")
  - Get eth balance of account in console:
  web3.fromWei(web3.eth.getBalance(web3.eth.accounts[0]), "ether").toNumber()
  - Identify the coinbase account (should be the same as web3.eth.accounts[0]):
  web3.eth.coinbase
  - Eth to Gas converter: https://ethgasstation.info/
  - Deploy an instance of the Greetings smart contract:
  Greetings.deployed().then(function(instance){app = instance;})
  - get value of getGreetings from the deployed Greetings contract
  app.getGreetings();
  - set value of Greetings contract from account[1]
  app.setGreetings("Value is changed", {from: web3.eth.accounts[1]})
  - figure out cost of transaction based on OpCode from Tx field: https://etherscan.io/opcode-tool and https://ethereum.github.io/yellowpaper/paper.pdf
  -
