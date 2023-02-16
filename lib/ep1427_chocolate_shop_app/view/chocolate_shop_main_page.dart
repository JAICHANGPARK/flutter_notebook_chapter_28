import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ChocolateShopMainPage extends StatefulWidget {
  const ChocolateShopMainPage({Key? key}) : super(key: key);

  @override
  State<ChocolateShopMainPage> createState() => _ChocolateShopMainPageState();
}

class _ChocolateShopMainPageState extends State<ChocolateShopMainPage> {
  int selectedIndex = 0;

  PageController pageController = PageController(viewportFraction: 0.6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: selectedIndex,
          children: [
            Column(
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
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
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
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 16, 0, 8),
                        height: 160,
                        color: Colors.blue,
                        child: PageView(
                          controller: pageController,
                          children: [
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                              ),
                            )
                          ],
                        ),
                      ),
                      DotsIndicator(
                        dotsCount: 5,
                      ),
                      Container(
                        height: 240,
                        color: Colors.pink,
                        padding: const EdgeInsets.all(16),
                        child: const Column(
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Expanded(child: Placeholder()),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(child: Placeholder()),
                              ],
                            )),
                            SizedBox(
                              height: 16,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(child: Placeholder()),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(child: Placeholder()),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(child: Placeholder()),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(child: Placeholder()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 54,
                        margin: const EdgeInsets.all(16),
                        color: Colors.brown,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Best Seller of the month 🎂",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "See All",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 300,
                        margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
            ...List.generate(
              4,
              (index) => Center(
                child: Text("${index + 1}"),
              ),
            )
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
                    const SizedBox(
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
                    const SizedBox(
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
