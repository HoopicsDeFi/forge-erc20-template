## Template

### 启动Anvil

```shell
$ anvil
```

### 部署
```
forge script script/DeployMyToken.s.sol:DeployMyToken --rpc-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```

```
[⠊] Compiling...
[⠢] Compiling 1 files with Solc 0.8.25
[⠆] Solc 0.8.25 finished in 1.09s
Compiler run successful!
Script ran successfully.

## Setting up 1 EVM.

==========================

Chain 31337

Estimated gas price: 2.000000001 gwei

Estimated total gas used for script: 702633

Estimated amount required: 0.001405266000702633 ETH

==========================

##### anvil-hardhat
✅  [Success] Hash: 0x4f08de18540c023b9ad8cfb202da7ce1f51314f2bce548c3e5e41e13d6f1b8fa
Contract Address: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Block: 1
Paid: 0.000540487000540487 ETH (540487 gas * 1.000000001 gwei)

✅ Sequence #1 on anvil-hardhat | Total Paid: 0.000540487000540487 ETH (540487 gas * avg 1.000000001 gwei)
                                                                                                                                                                                                              

==========================

ONCHAIN EXECUTION COMPLETE & SUCCESSFUL.
```

### 余额
```
cast balance 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266  --rpc-url http://localhost:8545 --erc20  0x5FbDB2315678afecb367f032d93F642f64180aa3
```

### 查询操作
```
cast call --rpc-url http://localhost:8545 0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0 "totalSupply()(uint256)"
cast call --rpc-url http://localhost:8545 0x5FbDB2315678afecb367f032d93F642f64180aa3 "symbol()(string)"
cast call --rpc-url http://localhost:8545 0x5FbDB2315678afecb367f032d93F642f64180aa3 "name()(string)"
cast call --rpc-url http://localhost:8545 0x5FbDB2315678afecb367f032d93F642f64180aa3 "balanceOf(address)(uint256)" "0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266"
```

### 发交易
```
cast send --rpc-url http://localhost:8545 0x5FbDB2315678afecb367f032d93F642f64180aa3 "transfer(address,uint256)(bool)" 0x70997970C51812dc3A010C7d01b50e0d17dc79C8 3 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 
```


* https://book.getfoundry.sh/reference/cast/cast-send