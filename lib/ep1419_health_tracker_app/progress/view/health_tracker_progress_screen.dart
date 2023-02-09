import 'package:flutter/material.dart';

class HealthTrackerProgressScreen extends StatefulWidget {
  const HealthTrackerProgressScreen({Key? key}) : super(key: key);

  @override
  State<HealthTrackerProgressScreen> createState() => _HealthTrackerProgressScreenState();
}

class _HealthTrackerProgressScreenState extends State<HealthTrackerProgressScreen> {
  List<DateTime> calendarItems = List.generate(
    7,
    (index) => DateTime.now().subtract(
      Duration(days: 7 - index),
    ),
  );

  Widget buildDayTextWidget(int week) {
    switch (week) {
      case 1:
        return const Text("Mon");
      case 2:
        return const Text("Tue");
      case 3:
        return const Text("Wed");
      case 4:
        return const Text("Thu");
      case 5:
        return const Text("Fri");
      case 6:
        return const Text("Sat");
      case 7:
        return const Text("Sun");

      default:
        return const Text("??");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
          child: const Text(
            "Progress",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 34,
            ),
          ),
        ),
        Container(
          height: 64,
          color: Colors.pink,
          child: ListView.builder(
            itemBuilder: (context, index) {
              final item = calendarItems[index];
              return Container(
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    buildDayTextWidget(item.weekday),
                    Text("${item.day}"),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
