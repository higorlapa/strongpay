import 'package:flutter/material.dart';

class CoinModel {
  Icon icon;
  String name;
  double priceInDollar;
  double princeInBTC;
  double changeIn24h;

  ///Specific to user
  double totalAmountInBTC;
  double totalAmountInDollar;

  CoinModel({this.icon, this.priceInDollar, this.princeInBTC});
}
