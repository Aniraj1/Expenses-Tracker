import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Importing Transaction class
import 'transaction.dart';

// Importing Chart and Chart bar
import 'package:expenses_tracker/chart.dart';
import 'package:expenses_tracker/chartbar.dart';

// Importing all the transcation list
import 'transaction_list.dart';

import 'package:expenses_tracker/new_transaction.dart';
import 'user_transaction.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  // Providing default value
  List<Expenses> expemsesList = [
    Expenses(id: '1', title: "Recharge", amount: 100, dateTime: DateTime.now()),
    Expenses(id: '1', title: "Lunch", amount: 100, dateTime: DateTime.now()),
  ];

  // Recalling past 7 day transaction
  List<Expenses> get recentExpenses {
    return expemsesList.where((ex) {
      return ex.dateTime.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }

  // Adding new transcations to expensesList
  void _addExpenses(String title, double amount) {
    var transaction = Expenses(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        dateTime: DateTime.now());
    setState(() {
      expemsesList.add(transaction);
    });
  }

  void _startAddNewTransaction(BuildContext context) {
    print("Hello");
    showModalBottomSheet(
      context: context,
      builder: (bCtx) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addExpenses),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      theme: ThemeData(primarySwatch: Colors.purple, accentColor: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Expenses"),
          actions: <Widget>[
            IconButton(
                onPressed: () => _startAddNewTransaction(context),
                icon: Icon(Icons.add))
          ],
        ),
        body: Column(
          children: [
            Chart(recentExpenses),
            //User_Transaction(),
            TransactionList(expemsesList),
          ],
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () => _startAddNewTransaction(context),
            child: Icon(Icons.add),
          ),
          //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }
}
