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
    {"name": "Haris", "bgColor": Colors.purple},
    {"name": "Ahmad", "bgColor": Colors.purple},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.count Example'),
      ),
      body: GridView.count(
        crossAxisCount: 3, // Each row has 3 items
        crossAxisSpacing: 10, // Space between columns
        mainAxisSpacing: 10, // Space between rows
        padding: EdgeInsets.all(10), // Padding around the grid
        children: mData.map((item) {
          return Container(
            color: item["bgColor"],
            child: Center(
              child: Text(
                item["name"],
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        }).toList(), // Convert the map to a list
      ),
    );
  }
}
