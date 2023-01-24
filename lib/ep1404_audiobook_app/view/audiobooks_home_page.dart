import 'package:flutter/material.dart';

class AudioBooksHomePage extends StatelessWidget {
  const AudioBooksHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          height: 360,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: NetworkImage("https://cdn.pixabay.com/photo/2014/12/09/21/01/still-life-562357_960_720.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 16,
                top: 16,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.white.withOpacity(0.4),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: IconButton(
                        icon: const Icon(Icons.bookmarks_outlined),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: ClipRRect(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 1, sigmaX: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Food in the Anecient",
                                style: GoogleFonts.dmSerifDisplay(
                                    color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              // SizedBox(
                              //   height: 6,
                              // ),
                              Text(
                                "Word from A to Z",
                                style: GoogleFonts.dmSerifDisplay(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "15th Listen",
                                    style: GoogleFonts.dmSerifDisplay(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 12,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Dream Walker",
                                    style: GoogleFonts.dmSerifDisplay(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Popular Books",
            style: GoogleFonts.dmSerifDisplay(
              fontWeight: FontWeight.normal,
              fontSize: 22,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/08/07/19/07/books-2606859_960_720.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "History of the Ancient World's Society",
                            style: GoogleFonts.dmSerifDisplay(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "Dr abcdefg hijk",
                              style: GoogleFonts.dmSerifDisplay(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              ...List.generate(
                                5,
                                    (index) => Icon(
                                  Icons.star,
                                  size: 14,
                                  color: _primaryGold,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                "80 Ratings",
                                style: GoogleFonts.dmSerifDisplay(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
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
