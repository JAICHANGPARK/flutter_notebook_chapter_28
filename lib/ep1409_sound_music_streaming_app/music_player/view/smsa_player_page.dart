import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1409_sound_music_streaming_app/home/domain/smsa_menu_data.dart';

class SmsaPlayerPage extends StatefulWidget {
  const SmsaPlayerPage({Key? key}) : super(key: key);

  @override
  State<SmsaPlayerPage> createState() => _SmsaPlayerPageState();
}

class _SmsaPlayerPageState extends State<SmsaPlayerPage> {
  int _menuIndex = 0;
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
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
        title: const Text("Title"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 1.2,
              color: Colors.indigo,
              margin: const EdgeInsets.only(bottom: 24),
            ),
            const Text(
              "Album Title Album Title",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "subtitle",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_previous,
                  ),
                  iconSize: 28,
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.forward_10,
                  ),
                  iconSize: 28,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    radius: 34,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.play_arrow),
                      iconSize: 38,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.forward_10,
                  ),
                  iconSize: 28,
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_next_outlined,
                  ),
                  iconSize: 28,
                  color: Colors.white,
                ),
              ],
            ),
            Slider(
                value: _sliderValue,
                onChanged: (v) {
                  setState(() {
                    _sliderValue = v;
                  });
                })
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var i = 0; i < smsaMenuData.length; i++)
                IconButton(
                  onPressed: () {
                    setState(() {
                      _menuIndex = i;
                    });
                  },
                  icon: Icon(smsaMenuData[i].iconData),
                  iconSize: 30,
                  color: _menuIndex == i ? Colors.indigoAccent[700] : Colors.grey,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
