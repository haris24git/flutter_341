import 'dart:math';

import 'package:demoapp/dart_programs/counter.dart';
import 'package:demoapp/flutter_programs/home_bmi.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  TextEditingController wtController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inController = TextEditingController();

  String bmi = "";
  Color bgColor = Colors.white;
  String imgPath = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculate',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Title text color
              letterSpacing: 1.2, // Add spacing between letters
            ),
          ),
        ),
        backgroundColor: Colors.indigo, // AppBar background color
        elevation: 45, // Elevation for shadow effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40), // Curve the bottom edges of the AppBar
          ),
        ),
      ),

      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 21,
                ),
                  TextField(
                     controller: wtController,
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                       label: Text('Weight(in KGs'),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(21),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(21),
                       )
                     ),
                  ),
                 SizedBox(
                   height: 21,
                 ),
                 TextField(
                    controller: ftController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: Text('Height(in feet'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                    ),
                 ),
                SizedBox(
                  height: 21,
                ),
                TextField(
                    controller: inController,
                   keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text('Height(in inch)'),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                    )
                  ),
                ),
            
                SizedBox(
                  height: 21,
                ),
            
                ElevatedButton(onPressed: (){
            
                  var wt = double.parse(wtController.text);
                  var feet = int.parse(ftController.text);
                  var inch = int.parse(inController.text);
            
                  int totalInch = (feet*12) + inch;
                  num totalCm = totalInch*2.54;
                  num totalM = totalCm/100;
            
                  num result = wt/(pow(totalM, 2.0));
            
                  bmi = "Your BMI is ${result.toStringAsFixed(2)}";
            
            
            
                  if(result>25){
                    bgColor = Colors.red.shade200;
                    imgPath = "assets/images/obesity.png";
                  } else if(result<18){
                    bgColor = Colors.orange.shade200;
                    imgPath = "assets/images/skinny.png";
                  } else{
                    bgColor = Colors.green.shade200;
                    imgPath = "assets/images/healthy.png";
                  }
            
            
            
                  setState(() {
            
                  });
            
                },
                    child: Text('Calculate')),
            
            
                SizedBox(height: 12,),
                Text(bmi),
                SizedBox(height: 12,),
            
                imgPath!="" ? SizedBox(
                  height: 250,
                    width: 250,
                    child: Image.asset(imgPath)):Container(),
              ],
            ),
          ),
        ),

    );
  }



}