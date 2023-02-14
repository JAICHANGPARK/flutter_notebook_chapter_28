import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1427_chocolate_shop_app/view/chocolate_shop_main_page.dart';

void main() {
  runApp(ChocolateShotApp());
}

class ChocolateShotApp extends StatelessWidget {
  const ChocolateShotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChocolateShopMainPage(),
    );
  }
}
