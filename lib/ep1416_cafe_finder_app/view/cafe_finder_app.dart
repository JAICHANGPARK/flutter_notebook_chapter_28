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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: IndexedStack(
          index: selectedIndex,
          children: [
            DefaultTabController(
              length: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.search),
                                hintText: "Search...",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const CircleAvatar(
                          radius: 28,
                        )
                      ],
                    ),
                  ),
                  const TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.sell),
                        text: "Termurah",
                      ),
                      Tab(
                        icon: Icon(Icons.star_border),
                        text: "Terfavorite",
                      ),
                      Tab(
                        icon: Icon(Icons.favorite_border),
                        text: "Terlaris",
                      ),
                      Tab(
                        icon: Icon(Icons.campaign_outlined),
                        text: "Promo",
                      ),
                      Tab(
                        icon: Icon(Icons.meeting_room_outlined),
                        text: "Indoor",
                      ),
                    ],
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                  ),
                  const Expanded(
                      child: TabBarView(
                    children: [
                      Placeholder(),
                      Placeholder(),
                      Placeholder(),
                      Placeholder(),
                      Placeholder(),
                    ],
                  )),
                ],
              ),
            ),
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
