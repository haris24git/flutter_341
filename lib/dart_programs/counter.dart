import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "My App",
      home: FirstScreen(),
    );
  }


}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
         return Scaffold(
           appBar: AppBar(
             title: Text("Flutter Application",),
           centerTitle: true,
           backgroundColor: Colors.blue,
           ),
           body: Center(
             child: Text("Hello, welcome to the First Screen!"), // Add body content
           ),
         );
  }

}