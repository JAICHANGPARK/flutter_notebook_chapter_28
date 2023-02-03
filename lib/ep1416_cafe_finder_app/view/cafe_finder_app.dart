import 'package:flutter/material.dart';

class CafeFinderMainPage extends StatefulWidget {
  const CafeFinderMainPage({Key? key}) : super(key: key);

  @override
  State<CafeFinderMainPage> createState() => _CafeFinderMainPageState();
}

class _CafeFinderMainPageState extends State<CafeFinderMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 248, 1),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 80,
        child: Row(
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_filled),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
