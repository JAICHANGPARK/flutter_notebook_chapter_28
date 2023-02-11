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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.brown[300],
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.add),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.only(
                      left: 2,
                      bottom: 2,
                      top: 2,
                      right: 8,
                    ),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Icon(
                            Icons.import_export,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Transfer"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
