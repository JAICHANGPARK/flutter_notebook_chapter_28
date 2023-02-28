import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1441_news_portal_app/view/news_portal_home_page.dart';

void main() {
  runApp(NewsPortalApp());
}

class NewsPortalApp extends StatelessWidget {
  const NewsPortalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsPortalHomePage(),
    );
  }
}
