import 'package:flutter/material.dart';

class SocialTripMainPage extends StatefulWidget {
  const SocialTripMainPage({Key? key}) : super(key: key);

  @override
  State<SocialTripMainPage> createState() => _SocialTripMainPageState();
}

class _SocialTripMainPageState extends State<SocialTripMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.only(
                    right: 8,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("3K")
                    ],
                  ),
                )
              ],
            )
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
                onPressed: () {},
                icon: const Icon(
                  Icons.home_filled,
                ),
                iconSize: 28,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.explore_outlined,
                ),
                iconSize: 28,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.public_outlined,
                ),
                iconSize: 28,
              ),
              IconButton(
                onPressed: () {},
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
        onPressed: () {},
        backgroundColor: Colors.red[300],
        child: const Icon(Icons.chat_outlined),
      ),
    );
  }
}
