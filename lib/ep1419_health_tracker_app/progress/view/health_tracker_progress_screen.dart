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

  Widget buildDayTextWidget(int week){
    switch(week) {
      case 0:

        break;
      default:
    }

    return Text("??");
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
          child: Text(
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
              return Container(
                child: Column(
                  children: [

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
