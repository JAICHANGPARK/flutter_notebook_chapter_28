import 'package:flutter/material.dart';

class TimeTrackerHomePage extends StatefulWidget {
  const TimeTrackerHomePage({Key? key}) : super(key: key);

  @override
  State<TimeTrackerHomePage> createState() => _TimeTrackerHomePageState();
}

class _TimeTrackerHomePageState extends State<TimeTrackerHomePage> {
  List<String> dayItems = ["M", "T", "W", "T", "F", "S", "S"];
  String selectedDay = "M";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                Badge(
                  label: const Text("0"),
                  backgroundColor: Colors.orange,
                  textColor: Colors.black,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const Text("Dream"),
                const Icon(
                  Icons.keyboard_arrow_down,
                ),
              ],
            ),
          )
        ],
        title: const Text("HR Tool"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter the hours",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const Text("Click on a day to enter working time"),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: 180,
              child: const Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("Plan")
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        width: 16,
                        thickness: 1,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("Working time")
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        width: 16,
                        thickness: 1,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("Overtime")
                          ],
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 8,
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("Holidays")
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        width: 16,
                        thickness: 1.5,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("Sickness")
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Container(
              height: 42,
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Container(
                    // height: 48,
                    width: 42,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey[400]!,
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 42,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey[400]!,
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward),
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    "10-16 Jan 2022",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    // height: 48,
                    width: 42,
                    margin: const EdgeInsets.only(left: 8, right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey[400]!,
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.calendar_month),
                      onPressed: () async {
                        await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 52,
                    // color: Colors.red,
                    child: Row(
                        children: dayItems
                            .map(
                              (e) => Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedDay = e;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: e == "S"
                                          ? Colors.grey[100]
                                          : e == selectedDay
                                              ? Colors.grey[200]
                                              : Colors.grey[300],
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(4),
                                        topLeft: Radius.circular(4),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "$e",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text("0:00"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                  Expanded(
                    child: buildSelectedWidget(selectedDay),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSelectedWidget(String day) {
    switch (day) {
      case "M":
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.access_time_rounded),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "No entries for today",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(120, 48),
                  ),
                  icon: const Icon(Icons.add),
                  label: const Text("New time"),
                )
              ],
            ),
          ),
        );
      case "T":
        return Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: const Text(
                              "Accepted",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "Project ALPHA",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                        "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris"
                        " nisi ut aliquip ex ea commodo consequat",
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            Icon(Icons.access_time_rounded),
                            SizedBox(
                              width: 8,
                            ),
                            Text("1h"),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(Icons.check),
                            SizedBox(
                              width: 8,
                            ),
                            Text("Free of charge")
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.tag),
                          SizedBox(
                            width: 8,
                          ),
                          Text("asd1asd54sa"),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(Icons.attach_money),
                          SizedBox(
                            width: 8,
                          ),
                          Text("4h"),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        );
      case "W":
        return Container(
          child: Center(
            child: Text(day),
          ),
        );
      case "T":
        return Container(
          child: Center(
            child: Text(day),
          ),
        );
      case "F":
        return Container(
          child: Center(
            child: Text(day),
          ),
        );
      case "S":
        return Container(
          child: Center(
            child: Text(day),
          ),
        );
      default:
        return Container();
    }
  }
}
