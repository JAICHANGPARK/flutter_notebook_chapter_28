import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1409_sound_music_streaming_app/home/domain/smsa_menu_data.dart';
import 'package:flutter_notebook_chapter_28/ep1409_sound_music_streaming_app/home/domain/smsa_tab_menu_data.dart';

/// SMSA : Sound Music Streaming App
class SMSAMainPage extends StatefulWidget {
  const SMSAMainPage({Key? key}) : super(key: key);

  @override
  State<SMSAMainPage> createState() => _SMSAMainPageState();
}

class _SMSAMainPageState extends State<SMSAMainPage> {
  int _tabIndex = 0;
  int _menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: IndexedStack(
          index: _menuIndex,
          children: [
            Stack(
              children: [
                Positioned.fill(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Good Morning\nHave a nice day!",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.start,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              foregroundColor: Colors.white,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.notifications_none,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        margin: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            for (var i = 0; i < smsaTabMenuData.length; i++)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _tabIndex = i;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: _tabIndex == i ? Colors.indigoAccent[700] : Colors.white.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  margin: const EdgeInsets.only(right: 12),
                                  child: Center(
                                    child: Text(
                                      smsaTabMenuData[i].title ?? "??",
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                          child: IndexedStack(
                            index: _tabIndex,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      height: 180,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 10,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            margin: const EdgeInsets.only(right: 12),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 130,
                                                  width: 130,
                                                  decoration: BoxDecoration(
                                                    color: Colors.indigo,
                                                    borderRadius: BorderRadius.circular(8),
                                                    image: const DecorationImage(
                                                      image: NetworkImage(
                                                          "https://cdn.pixabay.com/photo/2016/08/15/16/48/vinyl-1595847_960_720.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                const Text(
                                                  "Title Title",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "Subtitle",
                                                  style: TextStyle(
                                                    color: Colors.white.withOpacity(0.4),
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Artis",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      height: 100,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 20,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(right: 12),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: const [
                                                  CircleAvatar(
                                                    radius: 32,
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                    "Title",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text(
                                      "Popular today",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 16),
                                      height: 200,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Text(_tabIndex.toString()),
                              ),
                              Center(
                                child: Text(_tabIndex.toString()),
                              ),
                              Center(
                                child: Text(_tabIndex.toString()),
                              )
                              // for (var i = 0; i < smsaTabMenuData.length; i++)
                              //   Container(
                              //     child: Center(
                              //       child: Text(
                              //         "${i}",
                              //         style: TextStyle(
                              //           color: Colors.white,
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 16,
                  left: 16,
                  bottom: 4,
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: Text("${_menuIndex}"),
            ),
            Center(
              child: Text("${_menuIndex}"),
            ),
            Center(
              child: Text("${_menuIndex}"),
            )
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
