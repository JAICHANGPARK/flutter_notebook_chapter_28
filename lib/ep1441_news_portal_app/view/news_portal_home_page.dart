import 'package:flutter/material.dart';

class NewsPortalHomePage extends StatefulWidget {
  const NewsPortalHomePage({Key? key}) : super(key: key);

  @override
  State<NewsPortalHomePage> createState() => _NewsPortalHomePageState();
}

class _NewsPortalHomePageState extends State<NewsPortalHomePage> {
  Color accentColor = const Color.fromRGBO(161, 237, 177, 1);

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
                    padding: const EdgeInsets.fromLTRB(16, 64, 0, 24),
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
                          color: accentColor,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          "Must you know today",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Monday, January 16. 2023",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 240,
                                  margin: const EdgeInsets.only(right: 28),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 220,
                                        decoration: const BoxDecoration(
                                          color: Colors.grey,
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                left: 16,
                                                bottom: 16,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(16),
                                                  ),
                                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 4,
                                                        backgroundColor: Colors.red[200],
                                                      ),
                                                      const SizedBox(
                                                        width: 4,
                                                      ),
                                                      const Text(
                                                        "LIVE",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            height: 1.5),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 12),
                                        child: Text(
                                          "5 min read - 31m ago",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 18,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "Dream Walker",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                          height: 48,
                          color: Colors.blue,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                margin: const EdgeInsets.only(right: 12),
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                margin: const EdgeInsets.only(right: 12),
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: const Center(
                                  child: Text(
                                    "For You",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: List.generate(
                            10,
                            (index) => Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 16),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 16,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text("Dream Walker"),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            height: 1.5,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 80,
                                        width: 100,
                                        color: Colors.blue,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("5 min read - 31m ago"),
                                      Icon(
                                        Icons.more_horiz,
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
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
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: accentColor,
                              foregroundColor: Colors.black,
                              child: const Icon(
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
