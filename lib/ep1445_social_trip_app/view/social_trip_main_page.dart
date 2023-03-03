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
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_filled,
              ),
            )
          ],
        ),
      ),
    );
  }
}
