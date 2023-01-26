import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudiobooksDetailPage extends StatefulWidget {
  const AudiobooksDetailPage({Key? key}) : super(key: key);

  @override
  State<AudiobooksDetailPage> createState() => _AudiobooksDetailPageState();
}

class _AudiobooksDetailPageState extends State<AudiobooksDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Book Info", style: GoogleFonts.dmSerifDisplay(),),
        actions: [
          Icon(Icons.bookmarks_outlined)
        ],
      ),
    );
  }
}
