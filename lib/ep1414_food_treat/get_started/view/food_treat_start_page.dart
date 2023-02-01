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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello from FoodTread!"),
              Text("What brings you to us?"),
              Container(
                height: 300,
                color: Colors.pink,
              ),
              Container(
                child: Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (v) {},
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Treatment"),
                        Text("I would like to treat specific aliment"),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (v) {},
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Healthy lifestyle"),
                        Text("I want to improve health & lifestyle"),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: Text(
                    "Get started",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
