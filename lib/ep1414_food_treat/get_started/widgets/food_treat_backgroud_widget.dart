import 'package:flutter/material.dart';

class FootTreatBackgroundWidget extends StatelessWidget {
  const FootTreatBackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(247, 178, 142, 1),
              Color.fromRGBO(248, 190, 167, 1),
              Color.fromRGBO(250, 204, 192, 1),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
      ),
    );
  }
}
