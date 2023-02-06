import 'package:flutter/material.dart';

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
      body: const Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (idx) {
          setState(() {
            selectedIndex = idx;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "Profile"),
        ],
      ),
    );
  }
}
