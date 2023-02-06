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
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
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
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1,032",
                        style: TextStyle(fontSize: 48),
                      ),
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
              SizedBox(
                height: 24,
              ),
              Container(
                height: 260,
                color: Colors.blue,
              )
            ],
          ),
        ),
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        )
      ],
    );
  }
}
