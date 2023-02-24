import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_28/ep1437_employee_self_service_app/view/essa_main_page.dart';

void main() {
  runApp(const EmployeeSelfServiceApp());
}

class EmployeeSelfServiceApp extends StatelessWidget {
  const EmployeeSelfServiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ESSAMainPage(),
    );
  }
}
