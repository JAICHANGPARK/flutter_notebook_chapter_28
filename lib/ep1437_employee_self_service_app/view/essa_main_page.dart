import 'package:flutter/material.dart';

class ESSAMainPage extends StatefulWidget {
  const ESSAMainPage({Key? key}) : super(key: key);

  @override
  State<ESSAMainPage> createState() => _ESSAMainPageState();
}

class _ESSAMainPageState extends State<ESSAMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(child: Placeholder()),
                          SizedBox(
                            height: 8,
                          ),
                          Expanded(child: Placeholder()),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(child: Placeholder()),
                          SizedBox(
                            height: 8,
                          ),
                          Expanded(child: Placeholder()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 42,
                    ),
                    Text(
                      "Reduce the workloads\nof HR management.",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Text("Help you to improve efficiency, accuracy, engagement, "
                          "and cost savings for employers."),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("I'm a Manager"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 60),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "I'm a Employee",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
