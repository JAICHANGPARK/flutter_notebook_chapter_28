import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1431_time_tracker_app/view/time_tracker_home_page.dart';

void main() {
  runApp(const TimeTrackerApp());
}

class TimeTrackerApp extends StatelessWidget {
  const TimeTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TimeTrackerHomePage(),
    );
  }
}
