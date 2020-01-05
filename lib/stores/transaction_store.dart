import 'package:mobx/mobx.dart';
import 'package:strongpay/models/transaction_model.dart';


//class Transaction = TransactionBase with _$Transaction;


abstract class TransactionBase with Store {

  @observable
  TransactionModel transaction;


  @computed
  DateTime get transactionDate => DateTime.fromMicrosecondsSinceEpoch(transaction.timestamp);

}