import 'package:mobx/mobx.dart';
import 'package:strongpay/models/transaction_model.dart';
part 'transaction.g.dart';

class Transaction = TransactionBase with _$Transaction;

abstract class TransactionBase with Store {

  @observable
  TransactionModel transaction;

  @observable
  List<TransactionModel> transactionList;


}
