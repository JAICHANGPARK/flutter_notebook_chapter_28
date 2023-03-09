import 'package:flutter/material.dart';

class EGiftCardDetailPage extends StatefulWidget {
  const EGiftCardDetailPage({Key? key}) : super(key: key);

  @override
  State<EGiftCardDetailPage> createState() => _EGiftCardDetailPageState();
}

class _EGiftCardDetailPageState extends State<EGiftCardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text("E-gift card"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Netflix gift card",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
              "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
            ),
            SizedBox(
              height: 24,
            ),
            const Text(
              "Choose an amount",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Center(
                    child: Text("\$25"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Center(
                    child: Text("\$50"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Center(
                    child: Text("\$100"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Center(
                    child: Text("\$other amount"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Choose a design",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.red,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Text("\$25"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: Container(
                      child: Center(
                        child: Text(
                          "Select card",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
