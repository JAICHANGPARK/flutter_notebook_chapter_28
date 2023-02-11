import 'package:flutter/material.dart';

void main() {
  runApp(const FinanceServiceApp());
}

class FinanceServiceApp extends StatelessWidget {
  const FinanceServiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        "/calculator": (context) => FinanceCalculatorPage(),
      },
    );
  }
}
