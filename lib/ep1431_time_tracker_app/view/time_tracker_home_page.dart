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
        ],
        title: Text("HR Tool"),
      ),
    );
  }
}
