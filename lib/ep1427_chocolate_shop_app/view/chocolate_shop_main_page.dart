import 'package:flutter/material.dart';

class ChocolateShopMainPage extends StatefulWidget {
  const ChocolateShopMainPage({Key? key}) : super(key: key);

  @override
  State<ChocolateShopMainPage> createState() => _ChocolateShopMainPageState();
}

class _ChocolateShopMainPageState extends State<ChocolateShopMainPage> {
  int selectedIndex = 0;

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.cake_outlined,
                      color: selectedIndex == 0 ? Colors.brown : Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: selectedIndex == 0 ? Colors.brown : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.search,
                      color: selectedIndex == 1 ? Colors.brown : Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Browse",
                      style: TextStyle(
                        color: selectedIndex == 1 ? Colors.brown : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: Column(
                  children: [
                    Badge(
                      label: const Text("12"),
                      child: Icon(
                        Icons.confirmation_number,
                        color: selectedIndex == 2 ? Colors.brown : Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Voucher",
                      style: TextStyle(
                        color: selectedIndex == 2 ? Colors.brown : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: selectedIndex == 3 ? Colors.brown : Colors.grey,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(
                        color: selectedIndex == 3 ? Colors.brown : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 4;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.receipt_long,
                      color: selectedIndex == 4 ? Colors.brown : Colors.grey,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Transaction",
                      style: TextStyle(
                        color: selectedIndex == 4 ? Colors.brown : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
