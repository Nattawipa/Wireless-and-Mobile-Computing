import 'package:flutter/material.dart';
import 'money.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Account"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              new Money('Balance', '100000.0', Colors.deepPurple[900], 120, 30),
              new Money('Income', '50000.0', Colors.deepPurple[600], 90, 25),
              new Money('Expense', '40000.0', Colors.deepPurple[400], 90, 25),
              new Money('Overdue', '3600.0', Colors.deepPurple[100], 90, 25),
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
    );
  }
}
