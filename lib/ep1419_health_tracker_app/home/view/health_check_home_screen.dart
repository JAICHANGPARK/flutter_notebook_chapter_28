import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HealthCheckHomeScreen extends StatefulWidget {
  const HealthCheckHomeScreen({Key? key}) : super(key: key);

  @override
  State<HealthCheckHomeScreen> createState() => _HealthCheckHomeScreenState();
}

class _HealthCheckHomeScreenState extends State<HealthCheckHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello👋,"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Dreamwalker",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "1,032",
                              style: TextStyle(
                                fontSize: 42,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: " gr",
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Daily Avg Carbs",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Goal : 312",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: "  gr",
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 260,
                child: BarChart(
                  BarChartData(
                    borderData: FlBorderData(
                      show: false,
                    ),
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              interval: 50,
                              reservedSize: 32,
                              getTitlesWidget: (double value, TitleMeta meta) {
                                return Text(
                                  "${value.toStringAsFixed(0)} gr",
                                  style: TextStyle(fontSize: 11),
                                );
                              }),
                          axisNameSize: 16),
                    ),
                    barGroups: [
                      BarChartGroupData(
                        x: 0,
                        barRods: [
                          BarChartRodData(
                            width: 24,
                            borderRadius: BorderRadius.zero,
                            rodStackItems: [
                              BarChartRodStackItem(0, 50, Colors.red),
                              BarChartRodStackItem(50, 100, Colors.orange),
                              BarChartRodStackItem(100, 150, Colors.yellow),
                              BarChartRodStackItem(150, 250, Colors.grey[300]!),
                            ],
                            toY: 250,
                          ),
                        ],
                      ),
                      BarChartGroupData(x: 1),
                      BarChartGroupData(x: 2),
                      BarChartGroupData(x: 3),
                      BarChartGroupData(x: 4),
                      BarChartGroupData(x: 5),
                      BarChartGroupData(x: 6),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueGrey[50],
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Widget",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                        ),
                        child: const Text(
                          "Edit",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(0, 8, 0, 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 54,
                                    width: 54,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "🦶",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    "Step",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Text(
                                    "4,013",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 54,
                                    width: 54,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "🏃‍♂",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    "Distance Covered",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Text(
                                    "5,3km",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 54,
                                    width: 54,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "🔥",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    "Calories",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Text(
                                    "1,311",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              "💧",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Water",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "1500 ml of 3000 ml",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
