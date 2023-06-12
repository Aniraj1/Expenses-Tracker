import 'package:expenses_tracker/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home());
  }

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(title: Text("Expenses Tracker")),
  //       body: ListView(children: [
  //         for (int i = 0; i < 100; i++)
  //           Container(
  //             height: 100,
  //             child: Card(
  //               child: Row(
  //                 //mainAxisAlignment: MainAxisAlignment.center,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   Container(
  //                       decoration: BoxDecoration(
  //                           border: Border.all(
  //                         color: Colors.purple,
  //                         width: 2,
  //                       )),
  //                       child: Text("\$100.00")),
  //                   Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [Text("Recharge"), Text("May 15th, 2023")],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //       ]),
  //     ),
  //   );
  // }
}
