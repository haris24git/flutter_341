import 'package:flutter/material.dart';
import 'package:navigation_341/profile_page.dart';

class HomePage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

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
            TextField(
              controller: nameController,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage(name: nameController.text,)));
            }, child: Text('Next'))
          ],
        ),
      ),
    );
  }
}

class A{


}
