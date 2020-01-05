import 'package:strongpay/models/coin_model.dart';
import 'package:intl/intl.dart';

class TransactionModel {
  CoinModel coin;
  int timestamp;
  double amount;
  TransactionType transactionType;

  TransactionModel(
      {this.coin, this.timestamp, this.amount, this.transactionType})
      : assert(coin != null, timestamp != null);

  String get transactionDate {
    var date = DateTime.fromMicrosecondsSinceEpoch(this.timestamp);
    return DateFormat('MM/dd/yy').format(date);
  }

}

enum TransactionType { SEND, RECEIVE }
