import 'package:flutter/material.dart';

/// SMSA : Sound Music Streaming App
class SMSAMainPage extends StatefulWidget {
  const SMSAMainPage({Key? key}) : super(key: key);

  @override
  State<SMSAMainPage> createState() => _SMSAMainPageState();
}

class _SMSAMainPageState extends State<SMSAMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.blue,
          height: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home_filled),
                iconSize: 30,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search),
                iconSize: 30,),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border),
                iconSize: 30,),
              IconButton(onPressed: () {}, icon: Icon(Icons.person_outlined),
                iconSize: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
