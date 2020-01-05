import 'package:flutter/material.dart';

class CoinModel {
  Image image;
  String name;
  double priceInDollar;
  double princeInBTC;
  double changeIn24h;

  ///Specific to user
  double totalAmountInBTC;
  double totalAmountInDollar;

  CoinModel({this.image, this.name, this.priceInDollar, this.princeInBTC});
}
