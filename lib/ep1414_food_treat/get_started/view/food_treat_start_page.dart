import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTreatStartPage extends StatefulWidget {
  const FoodTreatStartPage({Key? key}) : super(key: key);

  @override
  State<FoodTreatStartPage> createState() => _FoodTreatStartPageState();
}

class _FoodTreatStartPageState extends State<FoodTreatStartPage> {
  bool selectedValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(247, 178, 142, 1),
                    Color.fromRGBO(248, 190, 167, 1),
                    Color.fromRGBO(250, 204, 192, 1),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
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
                    style: GoogleFonts.notoSerif(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 340,
                    color: Colors.transparent,
                    child: const Center(
                      child: Text(
                        "🍒",
                        style: TextStyle(
                          fontSize: 240,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(254, 223, 204, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(),
                    ),
                    padding: const EdgeInsets.fromLTRB(8, 20, 16, 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Radio<bool>(
                          value: true,
                          groupValue: selectedValue,
                          onChanged: (v) {
                            setState(() {
                              selectedValue = v ?? true;
                            });
                          },
                          activeColor: const Color.fromRGBO(250, 142, 81, 1),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Treatment",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "I would like to treat specific aliment",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(),
                    ),
                    padding: const EdgeInsets.fromLTRB(8, 20, 16, 20),
                    child: Row(
                      children: [
                        Radio<bool>(
                          value: false,
                          groupValue: selectedValue,
                          onChanged: (v) {
                            setState(() {
                              selectedValue = v ?? false;
                            });
                          },
                          activeColor: const Color.fromRGBO(250, 142, 81, 1),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Healthy lifestyle",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "I want to improve health & lifestyle",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
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
