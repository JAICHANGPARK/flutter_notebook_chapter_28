import 'package:flutter/material.dart';

class AudioBooksMainPage extends StatefulWidget {
  const AudioBooksMainPage({Key? key}) : super(key: key);

  @override
  State<AudioBooksMainPage> createState() => _AudioBooksMainPageState();
}

class _AudioBooksMainPageState extends State<AudioBooksMainPage> {
  Color _primaryBlack = Color(0xff2f2f2f);
  Color _primaryGold = Color(0xffBFA054);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: _primaryBlack,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: _primaryBlack,
          ),
        ],
        title: const Text("Booksbury"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          child: Row(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home,
                  ),
                  CircleAvatar(
                    radius: 3,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
