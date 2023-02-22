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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  "Hey, ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Dream Walker",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                CircleAvatar(),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Find a projects",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400]!,
                ),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                        hintText: "Search projects...",
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200]!,
                    foregroundColor: Colors.black,
                    child: const Icon(Icons.filter_alt_outlined),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text("Recent searches:"),
                Container(
                  child: Text("UI Design"),
                ),
                Container(
                  child: Text("Landing Page"),
                ),
                Container(
                  child: Text("Banner Design"),
                ),
                // Expanded(
                //     child: ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: [],
                // )),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Column(
                children: [
                  Text("Popular projects"),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, size: 14,),
                                    Text("Hong Kong"),
                                  ],
                                ),
                              ),
                              Text("Create an Eye-Catching UI for Our Fitness App(Only Freelancers)"),
                              Row(
                                children: [
                                  Text("Posted 2 hours ago - Payment Unverified"),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.red,
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
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
