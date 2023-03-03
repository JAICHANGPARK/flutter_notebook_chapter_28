import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1445_social_trip_app/view/social_trip_main_page.dart';

class SocialTripApp extends StatelessWidget {
  const SocialTripApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SocialTripMainPage(),
    );
  }
}
