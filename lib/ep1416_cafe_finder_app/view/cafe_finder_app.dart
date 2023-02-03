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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 80,
        child: Row(
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
                  onPressed: () {},
                  icon: const Icon(Icons.chat_outlined),
                  iconSize: 26,
                ),
                // CircleAvatar(
                //   radius: 4,
                //   backgroundColor: Colors.black,
                // )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_outline,
                  ),
                  iconSize: 26,
                ),
                // CircleAvatar(
                //   radius: 4,
                //   backgroundColor: Colors.black,
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
