import 'package:demoapp/dart_programs/counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){

  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: "MyApp",
          home: FirstScreen(),
        );
  }

}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Weather", style: TextStyle(color: Colors.white,fontSize:30, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.indigoAccent,
          centerTitle: false,

          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 35.0),
            child: Icon(
              Icons.cloud,
              color: Colors.white,
              size: 53,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                // Handle home icon press
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                // Handle settings icon press
              },
            ),
          ],
        ),

        body: Container(
            color: Colors.blue.shade50,
            child: Center(
              child: Container(
                width: 250,
                height: 250,

                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(75),
                ),
                child: Text("Haris"),
              ),
            ),
        ),
      );
  }

}