import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1419_health_tracker_app/view/health_check_main_page.dart';

void main() {
  runApp(const HealthTrackerApp());
}

class HealthTrackerApp extends StatelessWidget {
  const HealthTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HealthCheckMainPage(),
    );
  }
}
