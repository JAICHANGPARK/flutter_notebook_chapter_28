import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1419_health_tracker_app/home/view/health_check_home_screen.dart';
import 'package:flutter_notebook_chapter_28/ep1419_health_tracker_app/progress/view/health_tracker_progress_screen.dart';

class HealthCheckMainPage extends StatefulWidget {
  const HealthCheckMainPage({Key? key}) : super(key: key);

  @override
  State<HealthCheckMainPage> createState() => _HealthCheckMainPageState();
}

class _HealthCheckMainPageState extends State<HealthCheckMainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: selectedIndex,
          children: [
            const HealthCheckHomeScreen(),
            Container(),
            const HealthTrackerProgressScreen(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          elevation: 8,
          onTap: (idx) {
            setState(() {
              selectedIndex = idx;
            });
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blueAccent,
          type: BottomNavigationBarType.fixed,
          iconSize: 32,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Progress"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
