import 'package:flutter/material.dart';

class FinanceCalculatorPage extends StatefulWidget {
  const FinanceCalculatorPage({Key? key}) : super(key: key);

  @override
  State<FinanceCalculatorPage> createState() => _FinanceCalculatorPageState();
}

class _FinanceCalculatorPageState extends State<FinanceCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              CircleAvatar(
                backgroundColor: Colors.brown[300],
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
