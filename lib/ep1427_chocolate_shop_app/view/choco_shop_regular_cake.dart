import 'package:flutter/material.dart';

class ChocoShopRegularCakePage extends StatefulWidget {
  const ChocoShopRegularCakePage({Key? key}) : super(key: key);

  @override
  State<ChocoShopRegularCakePage> createState() => _ChocoShopRegularCakePageState();
}

class _ChocoShopRegularCakePageState extends State<ChocoShopRegularCakePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 260,
            decoration: const BoxDecoration(
              color: Colors.orange,
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2022/12/16/08/45/cookies-7659168_960_720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Regular Cake",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("Suitable for you who want to celebrate something fun"),
                  SizedBox(
                    height: 64,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          margin: const EdgeInsets.only(right: 16),
                          child: const Icon(Icons.tune),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          child: const Row(
                            children: [
                              Text("Price"),
                              Icon(
                                Icons.keyboard_arrow_down,
                              )
                            ],
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
