pragma solidity >=0.7.0 <0.9.0;

import "Token.sol";


contract TransferToken {


    function transfer() external {
        Token token = Token(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        token.transfer(msg.sender, 100);
    }
    function transferFrom(address recipient, uint amount) external {
        Token token = Token(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        token.transferFrom(msg.sender, recipient, amount);
    }
}

contract Owner {
    function transfer(address recipient, uint amount) external {
        Token token = Token(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        token.approve(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, amount);

        TransferToken transferToken = TransferToken(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        transferToken.transferFrom(msg.sender, amount);
    }
}