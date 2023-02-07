import 'package:flutter/material.dart';

class HealthCheckHomeScreen extends StatefulWidget {
  const HealthCheckHomeScreen({Key? key}) : super(key: key);

  @override
  State<HealthCheckHomeScreen> createState() => _HealthCheckHomeScreenState();
}

class _HealthCheckHomeScreenState extends State<HealthCheckHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello👋,"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Dreamwalker",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "1,032",
                          style: TextStyle(
                            fontSize: 42,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " gr",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        )
                      ])),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Daily Avg Carbs",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "Goal : 312 gr",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 260,
                color: Colors.blue,
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[50],
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Widget"),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Edit"),
                      ),
                    ],
                  ),
                  Container(
                    height: 160,
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    color: Colors.blue,
                  ),
                  Container(
                    height: 160,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
