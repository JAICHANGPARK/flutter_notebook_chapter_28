import 'package:flutter/material.dart';

class NewsPortalBookmarkPage extends StatefulWidget {
  const NewsPortalBookmarkPage({Key? key}) : super(key: key);

  @override
  State<NewsPortalBookmarkPage> createState() => _NewsPortalBookmarkPageState();
}

class _NewsPortalBookmarkPageState extends State<NewsPortalBookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.black,
          padding: EdgeInsets.only(top: 72, left: 16),
          child: Column(
            children: [
              Expanded(
                child: Text(
                  "My bookmark",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: ListView(children: [
                
              ],))

            ],
          ),
        ),
        Expanded(child: Placeholder()),
      ],
    );
  }
}
