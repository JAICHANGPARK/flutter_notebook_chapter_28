import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1416_cafe_finder_app/view/cafe_finder_app.dart';

void main() {
  runApp(CafeFinderApp());
}

class CafeFinderApp extends StatelessWidget {
  const CafeFinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CafeFinderMainPage(),
    );
  }
}
