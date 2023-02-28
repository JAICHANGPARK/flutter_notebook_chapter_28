import 'package:flutter/material.dart';

class NewsPortalHomePage extends StatefulWidget {
  const NewsPortalHomePage({Key? key}) : super(key: key);

  @override
  State<NewsPortalHomePage> createState() => _NewsPortalHomePageState();
}

class _NewsPortalHomePageState extends State<NewsPortalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height / 1.5,
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 80,
              color: Colors.grey[200],
              child: const Stack(
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }
}
