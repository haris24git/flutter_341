import 'package:demoapp/dart_programs/counter.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'app',
      home:  HomePage(),
   );
  }

}
class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> mData = [
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
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SizedBox(
        // height: 100,
        child: ListView(
      children: mData.map((element) {
            return Container(
               margin: EdgeInsets.all(11),
               height: 100,
               color: element["bgColor"],
               child: Center(
              child: Text(element["name"]),
              ),
             );
           }).toList(),
        ),
      ),
    );
  }
}

//   ListView(
//         children: mData.map((element) {
//           return Container(
//             margin: EdgeInsets.all(11),
//             height: 100,
//             color: element["bgColor"],
//             child: Center(
//               child: Text(element["name"]),
//             ),
//           );
//         }).toList(),
//       ),


// ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: mData.length,
// itemBuilder: (context, index) {
// print("item built : $index");
// return Container(
// margin: EdgeInsets.all(11),
// height: 100,
// width: 100,
// color: mData[index]["bgColor"],
// child: Center(
// child: Text(mData[index]["name"]),
// ),
// );
// }),