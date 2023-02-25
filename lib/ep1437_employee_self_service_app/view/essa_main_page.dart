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
                          Expanded(
                            flex: 4,
                            child: Container(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,

                                  ),
                                  Text("Attendacne management")
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Expanded(flex: 7, child: Placeholder()),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(flex: 7, child: Placeholder()),
                          SizedBox(
                            height: 8,
                          ),
                          Expanded(flex: 4, child: Placeholder()),
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
                    const SizedBox(
                      height: 42,
                    ),
                    const Text(
                      "Reduce the workloads\nof HR management.",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Text("Help you to improve efficiency, accuracy, engagement, "
                          "and cost savings for employers."),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("I'm a Manager"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 60),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
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
                      child: const Center(
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
