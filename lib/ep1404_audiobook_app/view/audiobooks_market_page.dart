import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1404_audiobook_app/audiobooks_style.dart';
import 'package:flutter_notebook_chapter_28/ep1404_audiobook_app/domain/audiobooks_exp_tab.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioMarketPage extends StatefulWidget {
  const AudioMarketPage({Key? key}) : super(key: key);

  @override
  State<AudioMarketPage> createState() => _AudioMarketPageState();
}

class _AudioMarketPageState extends State<AudioMarketPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: [
          SizedBox(
            height: 42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: audiobooksExploreTab.length,
              itemBuilder: (context, index) {
                final item = audiobooksExploreTab[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 16),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AudiobooksStyles.primaryGold,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: selectedIndex == index ? AudiobooksStyles.secondaryGold : Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "${item.tabIcon} ${item.title}",
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 8 / 12,
                  ),
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AudiobooksStyles.secondaryGold,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("The Replica"),
                              Text("By Dreamwalker"),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$285",
                                    style: GoogleFonts.dmSerifDisplay(),
                                  ),
                                  Container(
                                    decoration:
                                        BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                                    child: Center(
                                      child: Text(
                                        "Buy",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
                Container(
                  child: Center(
                    child: Text("${selectedIndex}"),
                  ),
                ),
                Center(
                  child: Text("${selectedIndex}"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
