import 'package:flutter/material.dart';

///Essa = Employee Self Service App
class EssaHomePage extends StatefulWidget {
  const EssaHomePage({Key? key}) : super(key: key);

  @override
  State<EssaHomePage> createState() => _EssaHomePageState();
}

class _EssaHomePageState extends State<EssaHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (idx) {
            setState(() {
              currentIndex = idx;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.access_time_rounded), label: "Time Off"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
