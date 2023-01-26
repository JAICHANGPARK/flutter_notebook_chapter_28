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
            icon: const Icon(Icons.bookmarks_outlined),
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
            const SizedBox(
              height: 24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Homeric Hymns",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "By subtitle",
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  "\$757",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 24,
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: 80,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AudiobooksStyles.secondaryGold,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("Released"),
                          SizedBox(
                            height: 8,
                          ),
                          Text("2021"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AudiobooksStyles.secondaryGold,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("Released"),
                          SizedBox(
                            height: 8,
                          ),
                          Text("2021"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AudiobooksStyles.secondaryGold,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("Released"),
                          SizedBox(
                            height: 8,
                          ),
                          Text("2021"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  SizedBox(
                    height: 42,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 2,
                            color: Colors.grey,
                          ),
                          left: 0,
                          right: 0,
                          bottom: 0,
                        ),
                        Positioned.fill(
                            child: TabBar(
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: AudiobooksStyles.primaryBlack,
                          tabs: [
                            Tab(
                              text: "Synopsis",
                            ),
                            Tab(
                              text: "Synopsis",
                            ),
                            Tab(
                              text: "Synopsis",
                            ),
                            Tab(
                              text: "Synopsis",
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                    children: [
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AudiobooksStyles.primaryGold,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.menu_book,
                          color: AudiobooksStyles.primaryBlack,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Start Reading",
                          style: GoogleFonts.dmSerifDisplay(
                            color: AudiobooksStyles.primaryBlack,
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
                    color: AudiobooksStyles.primaryBlack,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 6,
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
