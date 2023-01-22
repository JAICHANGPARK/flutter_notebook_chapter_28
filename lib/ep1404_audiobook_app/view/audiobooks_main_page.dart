import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu_book),
          onPressed: () {},
        ),
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
        title: Text(
          "Booksbury",
          style: GoogleFonts.dmSerifDisplay(),
        ),
        foregroundColor: _primaryBlack,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          height: 72,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 32,
                  ),
                  SizedBox(
                    height: 6,
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
