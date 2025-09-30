### forge 初始化项目

```bash
forge init --template https://github.com/0731coderlee-sudo/mine mine
```

### forge 检查项目

```bash
forge inspect <contract>
[possible values: abi, bytecode, deployedBytecode, assembly, legacyAssembly, assemblyOptimized, methodIdentifiers, gasEstimates, storageLayout, devdoc, ir, irOptimized, metadata, userdoc, ewasm, errors, events, standardJson]

luckyme@macdeMacBook-Pro pjone % forge inspect Contract abi

╭----------+------------------------------+------------╮
| Type     | Signature                    | Selector   |
+======================================================+
| function | bar() pure returns (uint256) | 0xfebb0f7e |
|----------+------------------------------+------------|
| function | foo() pure returns (string)  | 0xc2985578 |
╰----------+------------------------------+------------╯

luckyme@macdeMacBook-Pro pjone % forge inspect Contract bytecode
0x6080604052348015600e575f5ffd5b506101b08061001c5f395ff3fe608060405234801561000f575f5ffd5b5060043610610034575f3560e01c8063c298557814610038578063febb0f7e14610056575b5f5ffd5b610040610074565b60405161004d9190610129565b60405180910390f35b61005e6100b1565b60405161006b9190610161565b60405180910390f35b60606040518060400160405280600d81526020017f48656c6c6f2c20576f726c642100000000000000000000000000000000000000815250905090565b5f602a905090565b5f81519050919050565b5f82825260208201905092915050565b8281835e5f83830152505050565b5f601f19601f8301169050919050565b5f6100fb826100b9565b61010581856100c3565b93506101158185602086016100d3565b61011e816100e1565b840191505092915050565b5f6020820190508181035f83015261014181846100f1565b905092915050565b5f819050919050565b61015b81610149565b82525050565b5f6020820190506101745f830184610152565b9291505056fea2646970667358221220cedce7aca99a7454c40f7e9899f97b892a45fec1209b5cc19549e3fb34ab893264736f6c634300081e0033
```

### forge 测试

```
执行测试用例:forge test / forge test test/Counter.t.sol
1. 测试文件默认用 t.sol 结尾,也可 CounterTest.sol
2. 导入Test合约: 提供了基本的日志和断言功能
3. 导入测试目标合约
4. 继承 Test 合约,使用 Test 功能
5. Setup函数(可选):每个测试用例运行前都调用
6. 前缀为 test 的函数将作为测试用例运行
7. testFuzz 模糊测试:测试用例的参数值,由 foundry 随机抽样
```

### forge 本地部署

```
1. anvil启动。  //anvil --fork-url
2. forge create Counter --private-key
0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
--rpc-url http://localhost:8545
--broadcast
3.  
```

### forge 管理依赖库

```bash
forge install OpenZeppelin/openzeppelin-contracts
forge update openzeppelin-contracts
forge remove openzeppelin-contracts
```

### cast
```

cast wallet import --private-key 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --name anvil

用 keystore 账号部署:
forge create  Contract --account anvil --broadcast
[⠊] Compiling...
No files changed, compilation skipped
Enter keystore password:
Deployer: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
Deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Transaction hash: 0x3e10dfe2d676e0ece7e75d7de01b318e3e494f96f246d4e5b4c39627151a86da
```

### cast合约交互

```
cast balance 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
cast send toAddr --value 1ether --account anvil
cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 “number()”
cast abi-encode "constructor(string,string)" "OpenSpace S6" “OS6”
```

