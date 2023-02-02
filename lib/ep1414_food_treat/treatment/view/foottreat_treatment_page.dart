import 'package:flutter/material.dart';


class FoodTreadTreatmentPage extends StatefulWidget {
  const FoodTreadTreatmentPage({Key? key}) : super(key: key);

  @override
  State<FoodTreadTreatmentPage> createState() => _FoodTreadTreatmentPageState();
}

class _FoodTreadTreatmentPageState extends State<FoodTreadTreatmentPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: child),
        Positioned.fill(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Treatment"),
            ),
          ),
        ),
      ],
    );
  }
}
