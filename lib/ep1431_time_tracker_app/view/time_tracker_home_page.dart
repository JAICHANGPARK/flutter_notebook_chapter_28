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
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Badge(
            label: Text("0"),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
              ),
            ),
          ),
          Container(
            height: 32,
            width: 32,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          Text("Dream"),
          Icon(
            Icons.keyboard_arrow_down,
          ),
        ],
        title: Text("HR Tool"),
        backgroundColor: Colors.black,
      ),
    );
  }
}
