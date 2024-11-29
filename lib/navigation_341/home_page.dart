import 'package:demoapp/dart_programs/counter.dart';
import 'package:flutter/material.dart';
import 'package:navigation_341/profile_page.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'home',
        home: HomePage(),
    );
  }

}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Home', style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold
            ),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage()));
            }, child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
