import 'package:flutter/material.dart';

class ChocolateShopMainPage extends StatefulWidget {
  const ChocolateShopMainPage({Key? key}) : super(key: key);

  @override
  State<ChocolateShopMainPage> createState() => _ChocolateShopMainPageState();
}

class _ChocolateShopMainPageState extends State<ChocolateShopMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          child: Row(
            children: [
              Column(
                children: [
                  Icon(Icons.cake_outlined),
                  Text("Home"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
