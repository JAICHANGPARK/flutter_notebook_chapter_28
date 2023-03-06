import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1445_social_trip_app/view/social_trip_message_screen.dart';
import 'package:flutter_notebook_chapter_28/ep1445_social_trip_app/view/social_trip_screen.dart';

class SocialTripMainPage extends StatefulWidget {
  const SocialTripMainPage({Key? key}) : super(key: key);

  @override
  State<SocialTripMainPage> createState() => _SocialTripMainPageState();
}

class _SocialTripMainPageState extends State<SocialTripMainPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: pageIndex,
          children: [
            Container(),
            Container(),
            Container(),
            const SocialTripScreen(),
            Container(),
            const SocialTripMessageScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: const Icon(
                  Icons.home_filled,
                ),
                iconSize: 28,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: const Icon(
                  Icons.explore_outlined,
                ),
                iconSize: 28,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: const Icon(
                  Icons.public_outlined,
                ),
                iconSize: 28,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: const Icon(
                  Icons.business_center_outlined,
                ),
                iconSize: 28,
              ),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                padding: const EdgeInsets.all(2),
                child: const CircleAvatar(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (pageIndex == 5) {
              pageIndex = 0;
            } else {
              pageIndex = 5;
            }
          });
        },
        backgroundColor: Colors.red[300],
        child: pageIndex == 5 ? Icon(Icons.clear) : Icon(Icons.chat_outlined),
      ),
    );
  }
}
