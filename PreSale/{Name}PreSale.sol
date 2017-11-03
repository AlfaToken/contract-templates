pragma solidity ^0.4.11;

import "./{Name}.sol";

contract {Name}PreSale {
    {Name} public token;
    address public beneficiary;
    address public alfatokenteem;
    
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
        alfatokenteem = _alfatokenteam;
        bonus = {Bonus};
        price = {Price};
        minSaleAmount = {MinSaleAmount};
    }

    function () payable {
        uint amount = msg.value;
        uint tokenAmount = amount / price;
        if (tokenAmount < minSaleAmount) throw;
        amountRaised += amount;
        token.transfer(msg.sender, tokenAmount * (100 + bonus) / 100);
    }

    function TransferETH(address _to, uint _amount) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteem);
        _to.transfer(_amount);
    }

    function TransferTokens(address _to, uint _amount) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteem);
        token.transfer(_to, _amount);
    }

    function ChangeBonus(uint _bonus) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteem);
        bonus = _bonus;
    }
    
    function ChangePrice(uint _price) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteem);
        price = _price;
    }
    
    function ChangeMinSaleAmount(uint _minSaleAmount) {
        require(msg.sender == beneficiary || msg.sender == alfatokenteem);
        minSaleAmount = _minSaleAmount;
    }
}
