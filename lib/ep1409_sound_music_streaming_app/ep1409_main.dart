import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1409_sound_music_streaming_app/home/view/smsa_main_page.dart';
import 'package:flutter_notebook_chapter_28/ep1409_sound_music_streaming_app/login/view/sound_music_player_enter_page.dart';

void main() {
  runApp(const SoundMusicStreamingApp());
}

class SoundMusicStreamingApp extends StatelessWidget {
  const SoundMusicStreamingApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/login": (context) => const SoundMusicPlayerLoginPage(),
        "/home": (context) => const SMSAMainPage(),
      },
    );
  }
}
