import 'package:flutter/material.dart';

/// SMSA : Sound Music Streaming App
class SMSAMainPage extends StatefulWidget {
  const SMSAMainPage({Key? key}) : super(key: key);

  @override
  State<SMSAMainPage> createState() => _SMSAMainPageState();
}

class _SMSAMainPageState extends State<SMSAMainPage> {
  int _tabIndex = 0;
  int _menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Good Morning\nHave a nice day!",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.start,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.1),
                          foregroundColor: Colors.white,
                          child: IconButton(
                            icon: const Icon(
                              Icons.notifications_none,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 52,
                    margin: EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent[700],
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          margin: const EdgeInsets.only(right: 12),
                          child: const Center(
                            child: Text(
                              "Music",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          margin: const EdgeInsets.only(right: 12),
                          child: const Center(
                            child: Text(
                              "Podcast",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          margin: const EdgeInsets.only(right: 12),
                          child: const Center(
                            child: Text(
                              "Event",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          margin: const EdgeInsets.only(right: 12),
                          child: const Center(
                            child: Text(
                              "Artist",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                      child: Placeholder(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 16,
              left: 16,
              bottom: 4,
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _menuIndex = 0;
                  });
                },
                icon: const Icon(Icons.home_filled),
                iconSize: 30,
                color: _menuIndex == 0 ? Colors.indigoAccent[700] : Colors.grey,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _menuIndex = 1;
                  });
                },
                icon: const Icon(Icons.search),
                iconSize: 30,
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () { setState(() {
                  _menuIndex = 2;
                });},
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _menuIndex = 3;
                  });
                },
                icon: const Icon(Icons.person_outlined),
                iconSize: 30,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
