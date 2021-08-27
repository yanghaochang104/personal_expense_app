import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 99.99,
        date: DateTime.now())
  ];

  void _addNewTransaction(String title, double amount) {
    var newTransaction = Transaction(
        title: title,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(addNewTransaction: _addNewTransaction),
      TransactionList(transaction: _userTransaction),
    ]);
  }
}
