import 'package:flutter/material.dart';

class SocialTripScreen extends StatefulWidget {
  const SocialTripScreen({Key? key}) : super(key: key);

  @override
  State<SocialTripScreen> createState() => _SocialTripScreenState();
}

class _SocialTripScreenState extends State<SocialTripScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 64,
          child: Stack(
            children: [
              Positioned(
                left: 16,
                right: 16,
                bottom: 0,
                top: 0,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400]!,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.only(
                        right: 12,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.red[300],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "3K",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.tune),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              const Positioned(
                left: 16,
                right: 16,
                bottom: 0,
                top: 0,
                child: Center(
                  child: Text(
                    "Trips",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 54,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const TextField(
            decoration: InputDecoration(
              hintText: "Search",
              icon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: List.generate(
                  10,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.red,
                              child: Center(
                                child: CircleAvatar(
                                  radius: 16.5,
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Dreamwalker",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Seoul, Republic of Korea",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          height: 300,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2018/04/08/23/19/wood-3302802_960_720.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Amazing Days in\nSeoul",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_border,
                              ),
                              iconSize: 28,
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Text("February 13"),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "🧗‍♂",
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                  Text(
                                    "Climbing",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            const SizedBox(
                              width: 24,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "🚶‍♂",
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                      "Park/ Trail",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                          "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                          "nisi ut aliquip ex ea commodo consequat. ",
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
