import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1414_food_treat/get_started/view/food_treat_start_page.dart';

void main() {
  runApp(const FoodTreatApp());
}

class FoodTreatApp extends StatelessWidget {
  const FoodTreatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (ctx) => const FoodTreatStartPage(),
      },
    );
  }
}
