import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTreatStartPage extends StatefulWidget {
  const FoodTreatStartPage({Key? key}) : super(key: key);

  @override
  State<FoodTreatStartPage> createState() => _FoodTreatStartPageState();
}

class _FoodTreatStartPageState extends State<FoodTreatStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(247, 178, 142, 1),
                  Color.fromRGBO(248, 190, 167, 1),
                ]),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello from FoodTread!",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "What brings you to us?",
                    style: GoogleFonts.notoSerif(fontSize: 48),
                  ),
                  const Spacer(),
                  Container(
                    height: 360,
                    color: Colors.pink,
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(),
                    ),
                    padding: const EdgeInsets.fromLTRB(8, 16, 16, 16),
                    child: Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (v) {},
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Treatment"),
                            Text("I would like to treat specific aliment"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(),
                    ),
                    padding: const EdgeInsets.fromLTRB(8, 16, 16, 16),
                    child: Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (v) {},
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Healthy lifestyle"),
                            SizedBox(
                              height: 12,
                            ),
                            Text("I want to improve health & lifestyle"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: const Center(
                      child: Text(
                        "Get started",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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
    );
  }
}
