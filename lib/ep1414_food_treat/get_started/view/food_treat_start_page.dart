import 'package:flutter/material.dart';

class FoodTreatStartPage extends StatefulWidget {
  const FoodTreatStartPage({Key? key}) : super(key: key);

  @override
  State<FoodTreatStartPage> createState() => _FoodTreatStartPageState();
}

class _FoodTreatStartPageState extends State<FoodTreatStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Hello from FoodTread!"),
            Text("What brings you to us?"),
            Container(
              height: 280,
              color: Colors.pink,
            ),
            Container(
              child: Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (v) {},
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
