import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1434_freelancer_project_app/view/freelancer_main_page.dart';

void main() {
  runApp(FreelancerProjectApp());
}

class FreelancerProjectApp extends StatelessWidget {
  const FreelancerProjectApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => FreelancerMainPage(),
      },
    );
  }
}
