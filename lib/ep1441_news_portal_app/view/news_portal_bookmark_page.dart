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
          padding: const EdgeInsets.only(
            top: 72,
            left: 20,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Text(
                  "My bookmark",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
        const Expanded(child: Placeholder()),
      ],
    );
  }
}
