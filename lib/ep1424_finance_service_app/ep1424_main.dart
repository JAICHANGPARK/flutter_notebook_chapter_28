import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1424_finance_service_app/view/finance_calculator_page.dart';

void main() {
  runApp(const FinanceServiceApp());
}

class FinanceServiceApp extends StatelessWidget {
  const FinanceServiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/calculator",
      routes: {
        "/calculator": (context) => FinanceCalculatorPage(),
      },
    );
  }
}
