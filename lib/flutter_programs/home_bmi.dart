import 'dart:math';
import 'package:demoapp/dart_programs/counter.dart';
import 'package:flutter/material.dart';

void main(){
     runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class HomePageScreen extends StatefulWidget {
  @override
  State<HomePageScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageScreen> {
  TextEditingController wtController = TextEditingController();

  TextEditingController ftController = TextEditingController();

  TextEditingController inController = TextEditingController();

  String bmi = "";
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('BMI', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),
            SizedBox(height: 21,),
            TextField(
              controller: wtController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("Weight(in KGs)"),
                hintText: "Enter your Weight in KGS here..",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21)
                ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)
                  )
              ),
            ),
            SizedBox(height: 11,),
            TextField(
              controller: ftController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Text("Height(in feet)"),
                  hintText: "Enter your Height in feet here..",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)
                  )
              ),
            ),
            SizedBox(height: 11,),
            TextField(
              controller: inController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Text("Height(in inch)"),
                  hintText: "Enter your Height in inch here..",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)
                  )
              ),
            ),
            SizedBox(height: 11,),
            SizedBox(
              height: 21,
            ),
            ElevatedButton(onPressed: (){

              var wt = double.parse(wtController.text.toString());
              var feet = int.parse(ftController.text.toString());
              var inch = int.parse(inController.text.toString());

              int totalInch = (feet*12) + inch;
              num totalCm = totalInch*2.54;
              num totalM = totalCm/100;

              num result = wt/(pow(totalM, 2.0));

              bmi = "Your BMI is ${result.toStringAsFixed(2)}";

              if(result>25){
                bgColor = Colors.red.shade200;
              } else if(result<18){
                bgColor = Colors.orange.shade200;
              } else{
                bgColor = Colors.green.shade200;
              }

              setState(() {

              });



            }, child: Text('Calculate')),
            SizedBox(
              height: 11,
            ),
            Text(bmi)
          ],
        ),
      ),
    );
  }
}
