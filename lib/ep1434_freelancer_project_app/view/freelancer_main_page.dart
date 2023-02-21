import 'package:flutter/material.dart';

class FreelancerMainPage extends StatefulWidget {
  const FreelancerMainPage({Key? key}) : super(key: key);

  @override
  State<FreelancerMainPage> createState() => _FreelancerMainPageState();
}

class _FreelancerMainPageState extends State<FreelancerMainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("Hey"),
                Text("Dream Walker"),
                Spacer(),
                CircleAvatar(),
              ],
            ),
            Text("Find a projects"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400]!,
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  )),
                  CircleAvatar(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 82,
        child: BottomNavigationBar(
          onTap: (idx) => setState(() => selectedIndex = idx),
          currentIndex: selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
              tooltip: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
              ),
              label: "Category",
              tooltip: "Category",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_added_outlined,
              ),
              label: "Saved",
              tooltip: "Saved",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
