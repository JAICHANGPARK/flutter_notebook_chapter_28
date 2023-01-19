import 'package:flutter/material.dart';

import 'view/popular_creators_main_page.dart';

void main() {
  runApp(const PopularCreatorsApp());
}

class PopularCreatorsApp extends StatelessWidget {
  const PopularCreatorsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PopularCreatorsMainPage(),
    );
  }
}
