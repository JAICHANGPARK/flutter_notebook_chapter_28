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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello from FoodTread!", style: TextStyle(
                fontSize: 18
              ),),
              Text("What brings you to us?", style: GoogleFonts.notoSerif(
                fontSize: 48
              ),),
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
                decoration:
                    BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8), border: Border.all()),
                padding: EdgeInsets.fromLTRB(8, 16, 16, 16),
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
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(16)),
                padding: EdgeInsets.symmetric(vertical: 20),
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
