import 'package:demoapp/dart_programs/counter.dart';
import 'package:demoapp/flutter_programs/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'App',
       home: MyScreen(),
    );
  }

}

class MyScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Image.asset(
            'assets/images/xpress_logo.png',
            height: 190,
          ),
        ),

       
    );
  }

}