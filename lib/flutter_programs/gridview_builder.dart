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
        title: Text('GridView.builder Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0), // Adds padding around the grid
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Number of items in each row
            crossAxisSpacing: 10, // Space between columns
            mainAxisSpacing: 10, // Space between rows
          ),
          itemCount: mData.length,
          itemBuilder: (_, index) {
            return Container(
              color: mData[index]["bgColor"],
              child: Center(
                child: Text(
                  mData[index]["name"],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
