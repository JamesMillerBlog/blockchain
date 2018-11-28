Start web app:
  npm run dev

Start Ganache:
  Open Ganache app, ensure that all private keys are inputted into MetaMask

Start Geth:
  ./startnode.sh
  ensure accounts are uploaded to MetaMask via json in keystore

View Geth Console
  geth attach

Recompile contracts and deploy them to ganache network:
  truffle migrate --compile-all --reset --network ganache

Access truffle console:
  truffle console --network ganache

Deploy contracts onto ganache network from truffle console:
  migrate --compile-all --reset --network ganache

Access an instance of your contract in the truffle console
  ChainList.deployed().then(function(instance){app=instance;})

Get articles that you've created from web interface:
  app.getArticlesForSale()

Kill the contract
  app.kill({ from: web3.eth.accounts[0] })

Start geth on the Rinkeby network
  geth --rinkeby

Start geth on Rinkeyby network, with a new created account you can use for transactions
  geth --rinkeby account new
