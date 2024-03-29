import 'package:flutter/material.dart';

class HealthTrackerProgressScreen extends StatefulWidget {
  const HealthTrackerProgressScreen({Key? key}) : super(key: key);

  @override
  State<HealthTrackerProgressScreen> createState() => _HealthTrackerProgressScreenState();
}

class _HealthTrackerProgressScreenState extends State<HealthTrackerProgressScreen> {
  int calCount = 10;
  int selectedCalendar = 0;
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

  Widget buildDayTextWidget(int week, int index) {
    switch (week) {
      case 1:
        return Text(
          "Mon",
          style: selectedCalendar == index
              ? const TextStyle(
                  color: Colors.white,
                )
              : calTextWeekdayStyle,
        );
      case 2:
        return Text(
          "Tue",
          style: selectedCalendar == index
              ? const TextStyle(
                  color: Colors.white,
                )
              : calTextWeekdayStyle,
        );
      case 3:
        return Text(
          "Wed",
          style: selectedCalendar == index
              ? const TextStyle(
                  color: Colors.white,
                )
              : calTextWeekdayStyle,
        );
      case 4:
        return Text(
          "Thu",
          style: selectedCalendar == index
              ? const TextStyle(
                  color: Colors.white,
                )
              : calTextWeekdayStyle,
        );
      case 5:
        return Text(
          "Fri",
          style: selectedCalendar == index
              ? const TextStyle(
                  color: Colors.white,
                )
              : calTextWeekdayStyle,
        );
      case 6:
        return Text(
          "Sat",
          style: selectedCalendar == index
              ? const TextStyle(
                  color: Colors.white,
                )
              : calTextWeekdayStyle,
        );
      case 7:
        return Text(
          "Sun",
          style: selectedCalendar == index
              ? const TextStyle(
                  color: Colors.white,
                )
              : calTextWeekdayStyle,
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
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCalendar = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        margin: const EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color: selectedCalendar == index ? Colors.blue : Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            buildDayTextWidget(item.weekday, index),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "${item.day}",
                              style: selectedCalendar == index
                                  ? const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    )
                                  : calTextDayStyle,
                            ),
                          ],
                        ),
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
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey,
                ),
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
                      flex: 12,
                      child: Container(
                        color: Colors.grey[200],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    margin: const EdgeInsets.only(right: 8),
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
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    margin: const EdgeInsets.only(right: 8),
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
              const SizedBox(
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
                    margin: const EdgeInsets.only(right: 8),
                  ),
                  const Text("Carbohydrates"),
                  const Spacer(),
                  const Text("100 gr"),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Goals",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Edit"),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "172,30 lbs",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Start",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "200 lbs",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Target",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2,336 cal",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Daily Calories",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Your Entries",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Edit"),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              "💧",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Water",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "1500 ml of 3000 ml",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
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
