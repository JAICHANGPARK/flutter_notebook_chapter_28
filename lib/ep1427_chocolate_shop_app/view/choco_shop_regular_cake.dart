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
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Regular Cake",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
