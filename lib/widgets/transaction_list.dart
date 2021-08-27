import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  TransactionList({this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          itemBuilder: (context, index){
            return Card(
                      child: Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.black,
                            width: 2,
                          )),
                          padding: EdgeInsets.all(10),
                          child: Text('\$${transaction[index].amount.toString()}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.purple))),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(transaction[index].title,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Text(DateFormat().format(transaction[index].date)),
                          ])
                    ],
                  ));
          },
          itemCount: transaction.length,
    ));
  }
}
