import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1404_audiobook_app/view/audiobooks_main_page.dart';

void main() {
  runApp(const AudiobooksApp());
}

class AudiobooksApp extends StatelessWidget {
  const AudiobooksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AudioBooksMainPage(),
    );
  }
}
