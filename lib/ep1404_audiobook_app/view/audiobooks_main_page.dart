import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1404_audiobook_app/audiobooks_style.dart';
import 'package:flutter_notebook_chapter_28/ep1404_audiobook_app/domain/audiobooks_menu.dart';
import 'package:flutter_notebook_chapter_28/ep1404_audiobook_app/view/audiobooks_home_page.dart';
import 'package:flutter_notebook_chapter_28/ep1404_audiobook_app/view/audiobooks_market_page.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioBooksMainPage extends StatefulWidget {
  const AudioBooksMainPage({Key? key}) : super(key: key);

  @override
  State<AudioBooksMainPage> createState() => _AudioBooksMainPageState();
}

class _AudioBooksMainPageState extends State<AudioBooksMainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu_book),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: primaryBlack,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: primaryBlack,
          ),
        ],
        title: Text(
          "Booksbury",
          style: GoogleFonts.dmSerifDisplay(),
        ),
        foregroundColor: primaryBlack,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _index,
        children: [
          AudioBooksHomePage(),
          AudioMarketPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          height: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: audiobooksMenu
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = e.index ?? 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          e.iconData,
                          size: 28,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: _index == e.index ? primaryGold : Colors.transparent,
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
