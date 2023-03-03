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
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 16),
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
                  Icons.business_center,
                ),
                iconSize: 28,
              ),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
