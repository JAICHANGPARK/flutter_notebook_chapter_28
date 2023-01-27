import 'package:flutter/material.dart';

class SoundMusicPlayerLoginPage extends StatefulWidget {
  const SoundMusicPlayerLoginPage({Key? key}) : super(key: key);

  @override
  State<SoundMusicPlayerLoginPage> createState() => _SoundMusicPlayerLoginPageState();
}

class _SoundMusicPlayerLoginPageState extends State<SoundMusicPlayerLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2016/09/10/11/11/musician-1658887_960_720.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 72,
            child: Column(
              children: const [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "S",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      TextSpan(
                        text: "oundplay",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
