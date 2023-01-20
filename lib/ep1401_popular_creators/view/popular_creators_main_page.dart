import 'package:flutter/material.dart';

class PopularCreatorsMainPage extends StatefulWidget {
  const PopularCreatorsMainPage({Key? key}) : super(key: key);

  @override
  State<PopularCreatorsMainPage> createState() => _PopularCreatorsMainPageState();
}

class _PopularCreatorsMainPageState extends State<PopularCreatorsMainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "March",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                  Spacer(),
                  OutlinedButton(onPressed: () {}, child: Text("Today")),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(16, 24, 0, 0),
                color: Colors.grey[100],
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find your program",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 160,
                        margin: EdgeInsets.symmetric(vertical: 16),
                        color: Colors.blue,
                      ),
                      Text(
                        "Find your program",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        height: 100,
                        color: Colors.blue,
                      ),
                      Text(
                        "Find your program",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        height: 200,
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
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _index,
          onTap: (idx) {
            setState(() {
              _index = idx;
            });
          },
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
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
      ),
    );
  }
}
