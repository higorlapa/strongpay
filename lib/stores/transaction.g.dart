// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Transaction on TransactionBase, Store {
  final _$transactionAtom = Atom(name: 'TransactionBase.transaction');

  @override
  TransactionModel get transaction {
    _$transactionAtom.context.enforceReadPolicy(_$transactionAtom);
    _$transactionAtom.reportObserved();
    return super.transaction;
  }

  @override
  set transaction(TransactionModel value) {
    _$transactionAtom.context.conditionallyRunInAction(() {
      super.transaction = value;
      _$transactionAtom.reportChanged();
    }, _$transactionAtom, name: '${_$transactionAtom.name}_set');
  }

  final _$transactionListAtom = Atom(name: 'TransactionBase.transactionList');

  @override
  List<TransactionModel> get transactionList {
    _$transactionListAtom.context.enforceReadPolicy(_$transactionListAtom);
    _$transactionListAtom.reportObserved();
    return super.transactionList;
  }

  @override
  set transactionList(List<TransactionModel> value) {
    _$transactionListAtom.context.conditionallyRunInAction(() {
      super.transactionList = value;
      _$transactionListAtom.reportChanged();
    }, _$transactionListAtom, name: '${_$transactionListAtom.name}_set');
  }
}
