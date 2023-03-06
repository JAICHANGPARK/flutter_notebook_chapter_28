import 'package:flutter/material.dart';

class SocialTripMessageScreen extends StatefulWidget {
  const SocialTripMessageScreen({Key? key}) : super(key: key);

  @override
  State<SocialTripMessageScreen> createState() => _SocialTripMessageScreenState();
}

class _SocialTripMessageScreenState extends State<SocialTripMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: Text(
              "Message",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 48,
            margin: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[400]!,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: "Search",
                border: InputBorder.none,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Center(
                    child: Text(
                      "Direct",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Center(
                    child: Text(
                      "Connect",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Center(
                    child: Text(
                      "Requests",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                        ),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(3),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Dreamwalker"),
                              Text("14:11"),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                                  maxLines: 1,
                                ),
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.red,

                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (context, _) => const Divider(
                height: 48,
                color: Colors.grey,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
