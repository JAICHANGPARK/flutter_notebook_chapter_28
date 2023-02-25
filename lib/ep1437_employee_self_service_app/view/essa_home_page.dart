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
                padding: EdgeInsets.fromLTRB(16.0, 32, 16, 16),
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
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 16,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text("Check In"),
                                            ],
                                          ),
                                          Text(
                                            "08:30 am",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text("On time"),
                                              Text("+150 pt"),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(child: Placeholder()),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: Placeholder()),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(child: Placeholder()),
                              ],
                            ),
                          ),
                        ],
                      ),
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
