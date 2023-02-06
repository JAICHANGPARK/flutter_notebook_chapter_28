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
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            Column(
              children: [
                Text("Hello👋,"),
                Text("Dreamwalker"),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
              ),
            )
          ],
        )
      ],
    );
  }
}
