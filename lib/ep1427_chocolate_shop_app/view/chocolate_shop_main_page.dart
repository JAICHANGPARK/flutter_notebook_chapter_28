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
              ),
              Column(
                children: [
                  Icon(Icons.search),
                  Text("Browse"),
                ],
              ),
              Column(
                children: [
                  Badge(
                    child: Icon(Icons.confirmation_number),
                    // largeSize: 9,
                    label: Text("12"),
                  ),
                  Text("Browse"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.shopping_cart_outlined),
                  Text("Cart"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.receipt_long),
                  Text("Transaction"),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
