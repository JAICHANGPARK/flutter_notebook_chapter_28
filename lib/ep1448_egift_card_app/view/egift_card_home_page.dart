import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1448_egift_card_app/view/egift_card_detail_page.dart';

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
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  icon: Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 24, top: 8),
              child: SizedBox(
                height: 48,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        boxShadow: [
                          if (index == 0)
                            const BoxShadow(
                              color: Colors.black,
                              offset: Offset(2, 2),
                            ),
                        ],
                      ),
                      margin: const EdgeInsets.only(right: 16, bottom: 2),
                      child: const Center(
                        child: Text(
                          'Shopping',
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Special promotions",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        DotsIndicator(
                          dotsCount: 3,
                          decorator: DotsDecorator(
                            activeSize: const Size(32, 8),
                            size: const Size.square(9),
                            activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            activeColor: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 280,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(),
                        ),
                        const Divider(
                          color: Colors.black,
                          height: 0,
                          thickness: 1.2,
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Woman's day",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("Make your beloved feel special with our new designs."
                                    " 20% off on each card!"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Bestsellers",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            side: const BorderSide(),
                          ),
                          child: const Text(
                            "view all",
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 180,
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => EGiftCardDetailPage(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Stack(
                                      children: [
                                        Positioned(
                                          right: 0,
                                          top: 0,
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.favorite_border),
                                          ),
                                        )
                                      ],
                                    )),
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(colors: [
                                            Color.fromRGBO(183, 230, 192, 1),
                                            Color.fromRGBO(180, 212, 224, 1),
                                            Color.fromRGBO(175, 193, 252, 1),
                                          ]),
                                          border: Border.all(),
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          )),
                                      height: 42,
                                      child: Row(
                                        children: const [
                                          Expanded(child: Text("Netflix")),
                                          VerticalDivider(
                                            color: Colors.black,
                                          ),
                                          Expanded(child: Text("\$20-250")),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Stack(
                                    children: [
                                      Positioned(
                                        right: 0,
                                        top: 0,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.favorite_border),
                                        ),
                                      )
                                    ],
                                  )),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(183, 230, 192, 1),
                                          Color.fromRGBO(180, 212, 224, 1),
                                          Color.fromRGBO(175, 193, 252, 1),
                                        ]),
                                        border: Border.all(),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        )),
                                    height: 42,
                                    child: Row(
                                      children: const [
                                        Expanded(child: Text("PlayStation")),
                                        VerticalDivider(
                                          color: Colors.black,
                                        ),
                                        Expanded(child: Text("\$20-250")),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Popular",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            side: const BorderSide(),
                          ),
                          child: const Text(
                            "view all",
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 180,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Stack(
                                    children: [
                                      Positioned(
                                        right: 0,
                                        top: 0,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.favorite_border),
                                        ),
                                      )
                                    ],
                                  )),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(183, 230, 192, 1),
                                          Color.fromRGBO(180, 212, 224, 1),
                                          Color.fromRGBO(175, 193, 252, 1),
                                        ]),
                                        border: Border.all(),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        )),
                                    height: 42,
                                    child: Row(
                                      children: const [
                                        Expanded(child: Text("Netflix")),
                                        VerticalDivider(
                                          color: Colors.black,
                                        ),
                                        Expanded(child: Text("\$20-250")),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Stack(
                                    children: [
                                      Positioned(
                                        right: 0,
                                        top: 0,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.favorite_border),
                                        ),
                                      )
                                    ],
                                  )),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [
                                          Color.fromRGBO(183, 230, 192, 1),
                                          Color.fromRGBO(180, 212, 224, 1),
                                          Color.fromRGBO(175, 193, 252, 1),
                                        ]),
                                        border: Border.all(),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        )),
                                    height: 42,
                                    child: Row(
                                      children: const [
                                        Expanded(child: Text("PlayStation")),
                                        VerticalDivider(
                                          color: Colors.black,
                                        ),
                                        Expanded(child: Text("\$20-250")),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
