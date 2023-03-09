import 'package:flutter/material.dart';

class EGiftCardDetailPage extends StatefulWidget {
  const EGiftCardDetailPage({Key? key}) : super(key: key);

  @override
  State<EGiftCardDetailPage> createState() => _EGiftCardDetailPageState();
}

class _EGiftCardDetailPageState extends State<EGiftCardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text("E-gift card"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(8),
            ),
          )
        ],
      ),
    );
  }
}
