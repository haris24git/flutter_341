import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{

  String name;
  ProfilePage({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
            Text('Welcome, $name', style: TextStyle(
                fontSize: 25
            )),
          ],
        ),
      ),
    );
  }
}