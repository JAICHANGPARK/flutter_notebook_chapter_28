import 'package:flutter/material.dart';

/// SMSA : Sound Music Streaming App
class SMSAMainPage extends StatefulWidget {
  const SMSAMainPage({Key? key}) : super(key: key);

  @override
  State<SMSAMainPage> createState() => _SMSAMainPageState();
}

class _SMSAMainPageState extends State<SMSAMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Good Morning\nHave a nice day!",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.1),
                        foregroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications_none,
                          ), onPressed: () {  },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 20,
              left: 20,
              bottom: 4,
              child: Container(
                height: 64,
                decoration: BoxDecoration(color: Colors.indigoAccent, borderRadius: BorderRadius.circular(8)),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home_filled),
                iconSize: 30,
                color: Colors.indigoAccent[700],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                iconSize: 30,
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_outlined),
                iconSize: 30,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
