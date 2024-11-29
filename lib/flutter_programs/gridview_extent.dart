import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> mData = [
    {"name": "Haris", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.extent Example'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 50, // Max width for each item
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: mData.map((item) {
          return Container(
            color: item["bgColor"],
            child: Center(
              child: Text(
                item["name"],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
