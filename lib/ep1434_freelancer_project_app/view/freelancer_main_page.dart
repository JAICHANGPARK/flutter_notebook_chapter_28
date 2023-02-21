import 'package:flutter/material.dart';

class FreelancerMainPage extends StatefulWidget {
  const FreelancerMainPage({Key? key}) : super(key: key);

  @override
  State<FreelancerMainPage> createState() => _FreelancerMainPageState();
}

class _FreelancerMainPageState extends State<FreelancerMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
            ),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_added_outlined,
            ),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
