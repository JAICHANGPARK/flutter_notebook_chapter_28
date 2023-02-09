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
      Duration(days: 6 - index),
    ),
  );
  TextStyle calTextWeekdayStyle = const TextStyle(
    color: Colors.grey,
  );
  TextStyle calTextDayStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  Widget buildDayTextWidget(int week) {
    switch (week) {
      case 1:
        return Text(
          "Mon",
          style: calTextWeekdayStyle,
        );
      case 2:
        return Text(
          "Tue",
          style: calTextWeekdayStyle,
        );
      case 3:
        return Text(
          "Wed",
          style: calTextWeekdayStyle,
        );
      case 4:
        return Text(
          "Thu",
          style: calTextWeekdayStyle,
        );
      case 5:
        return Text(
          "Fri",
          style: calTextWeekdayStyle,
        );
      case 6:
        return Text(
          "Sat",
          style: calTextWeekdayStyle,
        );
      case 7:
        return Text(
          "Sun",
          style: calTextWeekdayStyle,
        );

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Progress",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              Container(
                height: 64,
                color: Colors.pink,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: calendarItems.length,
                  itemBuilder: (context, index) {
                    final item = calendarItems[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
          ),
        ),
      ],
    );
  }
}
