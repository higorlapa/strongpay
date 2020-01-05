// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Transaction on TransactionBase, Store {
  Computed<DateTime> _$transactionDateComputed;

  @override
  DateTime get transactionDate => (_$transactionDateComputed ??=
          Computed<DateTime>(() => super.transactionDate))
      .value;

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
}
