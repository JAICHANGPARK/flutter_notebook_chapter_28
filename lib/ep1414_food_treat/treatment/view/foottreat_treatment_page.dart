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
    return Scaffold(
      body: Stack(
        children: [
          const FootTreatBackgroundWidget(),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Treatment",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 48,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Column(
                            children: [],
                          ),
                        ),
                        Positioned(
                          left: 16,
                          right: 16,
                          bottom: 24,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(
                              child: Text(
                                "I'm not diagnosed yet",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
