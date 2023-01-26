import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1404_audiobook_app/audiobooks_style.dart';
import 'package:google_fonts/google_fonts.dart';

class AudiobooksDetailPage extends StatefulWidget {
  final String imgTag;

  const AudiobooksDetailPage({Key? key, required this.imgTag}) : super(key: key);

  @override
  State<AudiobooksDetailPage> createState() => _AudiobooksDetailPageState();
}

class _AudiobooksDetailPageState extends State<AudiobooksDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Book Info",
          style: GoogleFonts.dmSerifDisplay(),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmarks_outlined),
          )
        ],
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        child: Column(
          children: [
            Hero(
              tag: widget.imgTag,
              child: Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2019/02/14/07/28/painting-3995999_960_720.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration:
                  BoxDecoration(color: AudiobooksStyles.primaryGold, borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu_book,
                        color: Colors.white,
                      ),
                      Text("Start Reading",
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Container(
                  decoration:
                  BoxDecoration(color: AudiobooksStyles.primaryBlack, borderRadius: BorderRadius.circular(4)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                        ),
                        Text(
                          "Play Audio",
                          style: GoogleFonts.dmSerifDisplay(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
