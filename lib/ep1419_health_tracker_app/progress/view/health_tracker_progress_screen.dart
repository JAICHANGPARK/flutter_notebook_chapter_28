import 'package:flutter/material.dart';

class HealthTrackerProgressScreen extends StatefulWidget {
  const HealthTrackerProgressScreen({Key? key}) : super(key: key);

  @override
  State<HealthTrackerProgressScreen> createState() => _HealthTrackerProgressScreenState();
}

class _HealthTrackerProgressScreenState extends State<HealthTrackerProgressScreen> {
  int calCount = 10;
  List<DateTime> calendarItems = List.generate(
    10,
    (index) => DateTime.now().subtract(
      Duration(days: (10 - 1) - index),
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
                height: 50,
                margin: const EdgeInsets.only(top: 32, bottom: 16),
                // color: Colors.pink,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: calendarItems.length,
                  itemBuilder: (context, index) {
                    final item = calendarItems[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          buildDayTextWidget(item.weekday),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "${item.day}",
                            style: calTextDayStyle,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Calories left",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "1,032",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    TextSpan(
                      text: " Cal",
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 50,
                color: Colors.grey,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: Container(
                        color: Colors.grey[200],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const Text("Carbohydrates"),
                  const Spacer(),
                  const Text("100 gr"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const Text("Protein"),
                  const Spacer(),
                  const Text("98 gr"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    margin: EdgeInsets.only(right: 8),
                  ),
                  const Text("Carbohydrates"),
                  const Spacer(),
                  const Text("100 gr"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
