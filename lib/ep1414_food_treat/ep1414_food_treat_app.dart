import 'package:flutter/material.dart';

void main() {
  runApp(FoodTreatApp());
}

class FoodTreatApp extends StatelessWidget {
  const FoodTreatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (ctx) => FoodTreatApp(),
      },
    );
  }
}
