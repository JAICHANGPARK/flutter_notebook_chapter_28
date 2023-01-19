import 'package:flutter/material.dart';

class PopularCreatorsMainPage extends StatefulWidget {
  const PopularCreatorsMainPage({Key? key}) : super(key: key);

  @override
  State<PopularCreatorsMainPage> createState() => _PopularCreatorsMainPageState();
}

class _PopularCreatorsMainPageState extends State<PopularCreatorsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
