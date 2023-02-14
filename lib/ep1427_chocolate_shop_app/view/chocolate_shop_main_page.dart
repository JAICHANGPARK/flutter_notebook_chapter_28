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
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning, Dream 👋",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("what would you like to order today?"),
                    ],
                  ),
                  Spacer(),
                  Badge(
                    label: Text("5"),
                    child: Icon(
                      Icons.notifications_none,
                      size: 32,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(Icons.cake_outlined),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Home"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    height: 8,
                  ),
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
                  SizedBox(
                    height: 8,
                  ),
                  Text("Browse"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.shopping_cart_outlined),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Cart"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.receipt_long),
                  SizedBox(
                    height: 8,
                  ),
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
