import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Morning, Dream Walker",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("24 February 2023"),
                          ],
                        ),
                        CircleAvatar(),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Placeholder(),
            ),
          ],
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
          iconSize: 28,
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
