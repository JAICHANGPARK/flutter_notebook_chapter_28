import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1414_food_treat/get_started/widgets/food_treat_backgroud_widget.dart';


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
        FootTreatBackgroundWidget(),
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
