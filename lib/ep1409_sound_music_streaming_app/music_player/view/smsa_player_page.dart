import 'package:flutter/material.dart';

class SmsaPlayerPage extends StatefulWidget {
  const SmsaPlayerPage({Key? key}) : super(key: key);

  @override
  State<SmsaPlayerPage> createState() => _SmsaPlayerPageState();
}

class _SmsaPlayerPageState extends State<SmsaPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.notifications_none,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
            ),
          ),
        ],
      ),
    );
  }
}
