import 'package:strongpay/models/coin_model.dart';

class TransactionModel {
  CoinModel coin;
  int timestamp;
  double amount;
  TransactionType transactionType;

  TransactionModel(
      {this.coin, this.timestamp, this.amount, this.transactionType})
      : assert(coin != null, timestamp != null);
}

enum TransactionType { SEND, RECEIVE }
