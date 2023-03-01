import 'package:flutter/material.dart';

class NewsPortalHomePage extends StatefulWidget {
  const NewsPortalHomePage({Key? key}) : super(key: key);

  @override
  State<NewsPortalHomePage> createState() => _NewsPortalHomePageState();
}

class _NewsPortalHomePageState extends State<NewsPortalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(16, 64, 16, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // IconButton(
                        //   constraints: BoxConstraints(),
                        //   onPressed: () {},
                        //   icon: Icon(
                        //     Icons.newspaper,
                        //   ),
                        //   color: Colors.greenAccent,
                        //   iconSize: 32,
                        // ),
                        Icon(
                          Icons.newspaper,
                          size: 32,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Must you know today",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Monday, January 16. 2023",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 200,
                                color: Colors.blue,
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: const Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 100,
              // color: Colors.grey[200],
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 16,
                    child: Container(
                      color: Colors.grey[100],
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home_filled,
                                size: 34,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Homepage",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.bookmark_border,
                                size: 34,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Bookmark",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          )),
                          Expanded(child: Column()),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Badge(
                                child: Icon(
                                  Icons.notifications_none,
                                  size: 34,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Notification",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          )),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Profile",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.grey[100],
                            child: const CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.greenAccent,
                              foregroundColor: Colors.black,
                              child: Icon(
                                Icons.search,
                                size: 34,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Discover",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
