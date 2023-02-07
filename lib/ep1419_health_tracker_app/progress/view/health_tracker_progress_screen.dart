import 'package:flutter/material.dart';

class HealthTrackerProgressScreen extends StatefulWidget {
  const HealthTrackerProgressScreen({Key? key}) : super(key: key);

  @override
  State<HealthTrackerProgressScreen> createState() => _HealthTrackerProgressScreenState();
}

class _HealthTrackerProgressScreenState extends State<HealthTrackerProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Progress",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
        )
      ],
    );
  }
}
