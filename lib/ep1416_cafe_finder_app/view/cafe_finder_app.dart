import 'dart:math';

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
                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ListView(
                            children: [
                              Container(
                                height: 360,
                                margin: EdgeInsets.only(bottom: 24),
                                decoration: const BoxDecoration(),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 32,
                                        left: 3,
                                        child: Transform.rotate(
                                          angle: 45 * pi/ 180,
                                          child: Container(
                                      height: 14,
                                      width: 14,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                      ),
                                    ),
                                        )),
                                    Positioned(
                                      left: 8,
                                      right: 0,
                                      bottom: 0,
                                      top: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                color: Colors.pink,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(12),
                                                  topRight: Radius.circular(12),
                                                ),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2016/11/29/12/54/cafe-1869656_960_720.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                      right: 12,
                                                      top: 12,
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(4),
                                                        ),
                                                        padding: const EdgeInsets.symmetric(
                                                          horizontal: 6,
                                                          vertical: 6,
                                                        ),
                                                        child: const Row(
                                                          children: [
                                                            Icon(
                                                              Icons.location_on,
                                                              size: 16,
                                                            ),
                                                            SizedBox(
                                                              width: 4,
                                                            ),
                                                            Text(
                                                              "1.2km",
                                                            )
                                                          ],
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(12),
                                              child: const Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Title & Title Kitchen",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                        size: 16,
                                                      ),
                                                      SizedBox(width: 6),
                                                      Text(
                                                        "4.8",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    "Coffee, Western, Local",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Rp. 15k - 35k",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Icon(
                                                        Icons.access_time,
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text("Buka"),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.favorite_border,
                                                        color: Colors.grey,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 0,
                                        top: 16,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                          ),
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.percent,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                "30% off",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Container(
                                height: 360,
                                decoration: const BoxDecoration(),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 32,
                                        left: 3,
                                        child: Transform.rotate(
                                          angle: 45 * pi/ 180,
                                          child: Container(
                                            height: 14,
                                            width: 14,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                            ),
                                          ),
                                        )),
                                    Positioned(
                                      left: 8,
                                      right: 0,
                                      bottom: 0,
                                      top: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 260,
                                              decoration: const BoxDecoration(
                                                color: Colors.pink,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(12),
                                                  topRight: Radius.circular(12),
                                                ),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2016/11/29/12/54/cafe-1869656_960_720.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                      right: 12,
                                                      top: 12,
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(4),
                                                        ),
                                                        padding: const EdgeInsets.symmetric(
                                                          horizontal: 6,
                                                          vertical: 6,
                                                        ),
                                                        child: const Row(
                                                          children: [
                                                            Icon(
                                                              Icons.location_on,
                                                              size: 16,
                                                            ),
                                                            SizedBox(
                                                              width: 4,
                                                            ),
                                                            Text(
                                                              "1.2km",
                                                            )
                                                          ],
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(12),
                                              child: const Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Title & Title Kitchen",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.orange,
                                                        size: 16,
                                                      ),
                                                      SizedBox(width: 6),
                                                      Text(
                                                        "4.8",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    "Coffee, Western, Local",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Rp. 15k - 35k",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Icon(
                                                        Icons.access_time,
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text("Buka"),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.favorite_border,
                                                        color: Colors.grey,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 0,
                                        top: 16,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                          ),
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.percent,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                "30% off",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Placeholder(),
                        const Placeholder(),
                        const Placeholder(),
                        const Placeholder(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(selectedIndex.toString()),
            ),
            Center(
              child: Text(selectedIndex.toString()),
            ),
            Center(
              child: Text(selectedIndex.toString()),
            ),
            Center(
              child: Text(selectedIndex.toString()),
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
