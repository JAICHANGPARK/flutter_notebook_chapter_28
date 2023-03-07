import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1448_egift_card_app/view/egift_card_home_page.dart';

void main() {
  runApp(const EGiftCardApp());
}

class EGiftCardApp extends StatelessWidget {
  const EGiftCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EGiftCardHomePage(),
    );
  }
}
