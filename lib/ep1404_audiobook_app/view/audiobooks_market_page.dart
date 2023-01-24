import 'package:flutter/material.dart';

class AudioMarketPage extends StatefulWidget {
  const AudioMarketPage({Key? key}) : super(key: key);

  @override
  State<AudioMarketPage> createState() => _AudioMarketPageState();
}

class _AudioMarketPageState extends State<AudioMarketPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
      child: Column(
        children: [
          Container(
            height: 58,
            color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
              },
            ),
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(), itemBuilder: (context, index) {}))
        ],
      ),
    );
  }
}
