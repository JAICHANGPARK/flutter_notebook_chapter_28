import 'package:flutter/material.dart';

class EGiftCardHomePage extends StatefulWidget {
  const EGiftCardHomePage({Key? key}) : super(key: key);

  @override
  State<EGiftCardHomePage> createState() => _EGiftCardHomePageState();
}

class _EGiftCardHomePageState extends State<EGiftCardHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
