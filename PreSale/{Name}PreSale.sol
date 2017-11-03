pragma solidity ^0.4.11;

import "./{Name}.sol";

contract {Name}PreSale {
    {Name} public token;
    address public beneficiary;
    address public alfatokenteam;
    
    uint public amountRaised;
    
    uint public bonus;
    uint public price;    
    uint public minSaleAmount;

    function {Name}PreSale(
        {Name} _token,
        address _beneficiary,
        address _alfatokenteam
    ) {
        token = {Name}(_token);
        beneficiary = _beneficiary;
        alfatokenteam = _alfatokenteam;
        bonus = {Bonus};
        price = {Price};
        minSaleAmount = {MinSaleAmount};
    }

    function () payable {
        uint amount = msg.value;
        uint tokenAmount = amount * price;
        if (tokenAmount < minSaleAmount) throw;
        amountRaised += amount;
        token.transfer(msg.sender, tokenAmount * (100 + bonus) / 100);
    }

    function TransferETH(address _to, uint _amount) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteam);
        _to.transfer(_amount);
    }

    function TransferTokens(address _to, uint _amount) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteam);
        token.transfer(_to, _amount);
    }

    function ChangeBonus(uint _bonus) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteam);
        bonus = _bonus;
    }
    
    function ChangePrice(uint _price) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteam);
        price = _price;
    }
    
    function ChangeMinSaleAmount(uint _minSaleAmount) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteam);
        minSaleAmount = _minSaleAmount;
    }
}
