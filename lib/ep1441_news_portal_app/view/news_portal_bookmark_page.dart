import 'package:flutter/material.dart';

class NewsPortalBookmarkPage extends StatefulWidget {
  const NewsPortalBookmarkPage({Key? key}) : super(key: key);

  @override
  State<NewsPortalBookmarkPage> createState() => _NewsPortalBookmarkPageState();
}

class _NewsPortalBookmarkPageState extends State<NewsPortalBookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.black,
          padding: const EdgeInsets.only(
            top: 72,
            left: 20,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Text(
                  "My bookmark",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    margin: const EdgeInsets.only(right: 12),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Center(
                      child: Text(
                        "Hot News",
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.2),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Center(
                      child: Text(
                        "Reading List",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.2),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Center(
                      child: Text(
                        "Reading List",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 16),
                child: Column(
                  children: [
                     Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Dream Walker",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
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
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2022/11/16/16/56/city-7596379_960_720.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("5 min read - 31m ago"),
                        PopupMenuButton(
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(child: Text("Delete From Bookmark")),
                            ];
                          },
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                        ),

                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
