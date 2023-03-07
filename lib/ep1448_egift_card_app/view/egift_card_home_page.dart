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
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(3),
              ),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  icon: Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 48,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue,
                    margin: EdgeInsets.only(right: 16),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
