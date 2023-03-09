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
        title: Text("E-gift card"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Netflix gift card",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
              "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
            ),
            Text(
              "Choose an amount",
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    boxShadow: [],
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Center(
                    child: Text("\$25"),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
