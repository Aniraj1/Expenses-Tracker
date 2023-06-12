//import 'dart:ffi';

import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import './transaction.dart';

class User_Transaction extends StatefulWidget {
  const User_Transaction({super.key});

  @override
  State<User_Transaction> createState() => _User_TransactionState();
}

class _User_TransactionState extends State<User_Transaction> {
  List<Expenses> expensesList = [
    Expenses(id: "1", title: "Recharge", amount: 100, dateTime: DateTime.now()),
    Expenses(id: '1', title: "Lunch", amount: 100, dateTime: DateTime.now()),
  ];

  void addExpenses(String title, double amount) {
    var transaction = Expenses(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        dateTime: DateTime.now());
    setState(() {
      expensesList.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addExpenses),
        TransactionList(expensesList),
      ],
    );
  }
}
