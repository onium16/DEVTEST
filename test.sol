pragma solidity ^0.4.23;

// Imports
import "../node_modules/openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "../node_modules/openzeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol";
import "../node_modules/openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract MyCrowdsale is CappedCrowdsale, RefundableCrowdsale, MintedCrowdsale {
 constructor(
  uint256 _openingTime,
  uint256 _closingTime,
  uint256 _rate,
  address _wallet,
  uint256 _cap,
  MintableToken _token,
  uint256 _goal
 )
  public
  Crowdsale(_rate, _wallet, _token)
  CappedCrowdsale(_cap)
  TimedCrowdsale(_openingTime, _closingTime)
  RefundableCrowdsale(_goal)
 {
  // Это тут просто, чтобы показать, что можно сделать
  // Проверяем, что софткеп ниже хардкепа
  require(_goal <= _cap);
 }
}