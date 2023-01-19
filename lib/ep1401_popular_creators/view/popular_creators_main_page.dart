import 'package:flutter/material.dart';

class PopularCreatorsMainPage extends StatefulWidget {
  const PopularCreatorsMainPage({Key? key}) : super(key: key);

  @override
  State<PopularCreatorsMainPage> createState() => _PopularCreatorsMainPageState();
}

class _PopularCreatorsMainPageState extends State<PopularCreatorsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("March"),
                Icon(Icons.keyboard_arrow_down),
                OutlinedButton(onPressed: () {}, child: Text("Today")),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                )
              ],
            ),
            Container(
              height: 120,
            ),
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Find your program"),
                      Container(
                        height: 140,
                        color: Colors.blue,
                      ),
                      Text("Find your program"),
                      Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                      Text("Find your program"),
                      Container(
                        height: 140,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Dashboard",
          )
        ],
      ),
    );
  }
}
