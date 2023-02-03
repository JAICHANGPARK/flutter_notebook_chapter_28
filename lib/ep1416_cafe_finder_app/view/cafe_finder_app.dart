import 'package:flutter/material.dart';

class CafeFinderMainPage extends StatefulWidget {
  const CafeFinderMainPage({Key? key}) : super(key: key);

  @override
  State<CafeFinderMainPage> createState() => _CafeFinderMainPageState();
}

class _CafeFinderMainPageState extends State<CafeFinderMainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 246, 248, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CircleAvatar(
                    radius: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 84,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    icon: const Icon(Icons.home_filled),
                    iconSize: 26,
                    color: selectedIndex == 0 ? Colors.black : Colors.grey,
                  ),
                  selectedIndex == 0
                      ? const CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.black,
                        )
                      : Container(),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    icon: const Icon(Icons.favorite_border),
                    iconSize: 26,
                    color: selectedIndex == 1 ? Colors.black : Colors.grey,
                  ),
                  selectedIndex == 1
                      ? const CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.black,
                        )
                      : Container(),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    icon: const Icon(Icons.chat_outlined),
                    iconSize: 26,
                    color: selectedIndex == 2 ? Colors.black : Colors.grey,
                  ),
                  selectedIndex == 2
                      ? const CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.black,
                        )
                      : Container()
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                    icon: const Icon(
                      Icons.person_outline,
                    ),
                    iconSize: 26,
                    color: selectedIndex == 3 ? Colors.black : Colors.grey,
                  ),
                  selectedIndex == 3
                      ? const CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.black,
                        )
                      : Container()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
