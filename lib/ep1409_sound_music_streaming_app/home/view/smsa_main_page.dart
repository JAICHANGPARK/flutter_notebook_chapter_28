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
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
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
                    margin: EdgeInsets.only(left: 16),
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
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                      child: IndexedStack(
                        index: _tabIndex,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 16,),
                                Text("Artis"),
                                SizedBox(height: 16,),
                                Container(
                                  height: 100,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 16,),
                                Container(
                                  height: 160,
                                  color: Colors.blue,
                                ),
                              ],

                            ),
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
