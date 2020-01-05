import 'package:flutter/material.dart';

import '../../../../../models/transaction_model.dart';

class TransactionWidget extends StatefulWidget {

  final TransactionModel transaction;

  TransactionWidget({this.transaction}) : assert(transaction != null);

  @override
  _TransactionWidgetState createState() => _TransactionWidgetState(this.transaction);
}

class _TransactionWidgetState extends State<TransactionWidget> {


  final TransactionModel transaction;

  _TransactionWidgetState(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          transaction.coin.image,
          ///ToDo: Change it later
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(transaction.timestamp.toString()),
          ),
          Text(transaction.amount.toString())
        ],
      ),
    );
  }
}
