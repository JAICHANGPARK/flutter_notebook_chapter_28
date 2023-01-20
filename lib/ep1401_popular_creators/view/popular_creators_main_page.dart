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
                  const Text(
                    "March",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down),
                  const Spacer(),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    child: const Text("Today"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
                color: Colors.grey[100],
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Find your program",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 160,
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        // color: Colors.blue,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 16),
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/08/07/14/02/man-2604149_960_720.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "#BuildMuscle",
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                      const Text(
                        "Find your program",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        height: 100,
                        color: Colors.blue,
                      ),
                      const Text(
                        "Find your program",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
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
