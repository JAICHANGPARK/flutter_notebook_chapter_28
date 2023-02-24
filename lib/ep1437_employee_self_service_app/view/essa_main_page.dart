import 'package:flutter/material.dart';

class ESSAMainPage extends StatefulWidget {
  const ESSAMainPage({Key? key}) : super(key: key);

  @override
  State<ESSAMainPage> createState() => _ESSAMainPageState();
}

class _ESSAMainPageState extends State<ESSAMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(child: Placeholder()),
                          SizedBox(height: 8,),
                          Expanded(child: Placeholder()),
                        ],
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(child: Placeholder()),
                          SizedBox(height: 8,),
                          Expanded(child: Placeholder()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Reduce the workloads\nof HR management."),
                    Text("Help you to improve efficiency, accuracy, engagement, "
                        "and cost savings for employers."),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("I'm a Manager"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("I'm a Employee"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
