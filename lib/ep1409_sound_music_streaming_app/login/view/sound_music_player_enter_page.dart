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
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2016/09/10/11/11/musician-1658887_960_720.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 24,
            top: 72,
            child: Column(
              children: [
                const Text.rich(
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
                ),
                const Spacer(),
                const Text(
                  "Create Your Playrist,\nShare It With Other",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Choose music according to your taste, create your own playlist to "
                  "accompany your day!",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  decoration: const ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.indigo,
                  ),
                  child: Center(
                    child: Text("Get Started"),
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
