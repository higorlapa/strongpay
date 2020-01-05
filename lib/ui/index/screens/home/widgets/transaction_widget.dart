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
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5)),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 20,
            height: 20,
            child: transaction.coin.image,
          ),
          ///ToDo: Change it later
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(transaction.amount.toString(),
            style: TextStyle(
              color: transaction.transactionType == TransactionType.SEND ?
                  Colors.red : Colors.green
            ),),
          ),
          Text(transaction.timestamp.toString()),
        ],
      ),
    );
  }
}
