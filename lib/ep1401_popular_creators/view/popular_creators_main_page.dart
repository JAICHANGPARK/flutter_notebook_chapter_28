import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class PopularCreatorsMainPage extends StatefulWidget {
  const PopularCreatorsMainPage({Key? key}) : super(key: key);

  @override
  State<PopularCreatorsMainPage> createState() => _PopularCreatorsMainPageState();
}

class _PopularCreatorsMainPageState extends State<PopularCreatorsMainPage> {
  int _index = 0;
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

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
              child: DatePicker(
                DateTime.now(),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
                color: Colors.grey[200],
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
                                children: const [
                                  Text(
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
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 16,
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
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, _) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  CircleAvatar(
                                    radius: 32,
                                    backgroundImage: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/11/18/22/10/man-1837119_960_720.jpg",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Dream")
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 16,
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
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 16),
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/03/27/07/08/man-1282232_960_720.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.network_cell,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Beginner",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Text(
                                      "START HERE",
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
      floatingActionButton: SpeedDial(
        child: const Icon(Icons.add),
        backgroundColor: Colors.red,
        openCloseDial: isDialOpen,
        onClose: () {
          print("Dial onClose");
          isDialOpen.value = false;
        },
        onOpen: () {
          isDialOpen.value = true;
          print("Dial onOpen");
        },
        children: [
          SpeedDialChild(
            label: "Book session",
            child: const Icon(
              Icons.book,
            ),
            // shape: RoundedRectangleBorder(),
          ),
          SpeedDialChild(
            label: "Book class",
            child: const Icon(
              Icons.book,
            ),
          ),
          SpeedDialChild(
            label: "Create Session",
            child: const Icon(
              Icons.book,
            ),
          ),
          SpeedDialChild(
            label: "Add From Library",
            child: const Icon(
              Icons.book,
            ),
          ),
        ],
      ),
    );
  }
}
