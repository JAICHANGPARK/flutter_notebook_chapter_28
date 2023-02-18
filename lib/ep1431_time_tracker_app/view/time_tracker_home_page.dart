import 'package:flutter/material.dart';

class TimeTrackerHomePage extends StatefulWidget {
  const TimeTrackerHomePage({Key? key}) : super(key: key);

  @override
  State<TimeTrackerHomePage> createState() => _TimeTrackerHomePageState();
}

class _TimeTrackerHomePageState extends State<TimeTrackerHomePage> {
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
            Text(
              "Enter the hours",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            Text("Click on a day to enter working time"),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              height: 200,
              color: Colors.blue,
            ),
            Container(
              height: 52,
              color: Colors.orange,
              margin: EdgeInsets.only(bottom: 16),
            ),
            Expanded(
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
