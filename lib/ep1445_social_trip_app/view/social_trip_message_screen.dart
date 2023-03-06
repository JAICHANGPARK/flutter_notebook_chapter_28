import 'package:flutter/material.dart';

class SocialTripMessageScreen extends StatefulWidget {
  const SocialTripMessageScreen({Key? key}) : super(key: key);

  @override
  State<SocialTripMessageScreen> createState() => _SocialTripMessageScreenState();
}

class _SocialTripMessageScreenState extends State<SocialTripMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Message",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Container(
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[400]!,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: "Search",
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "Direct",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    "Connect",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    "Requests",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
