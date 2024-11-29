import 'package:demoapp/dart_programs/counter.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'App',
      home: BasicUIPage(),
    );
  }

}

class BasicUIPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //nameController.text = "Default";

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              onChanged: (v) {
                print(v);
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle_rounded),
                suffixText: "@gmail.com",
                label: Text('Email'),
                hintText: "Enter you email here..",
                enabledBorder:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.blue
                      )
                    ),
                focusedBorder:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.green
                        )
                    ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            TextField(
              controller: passController,
              onChanged: (v) {
                print(v);
              },
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                enabledBorder:
                OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.blue
                    )
                ),
                focusedBorder:
                OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        width: 2,
                        color: Colors.green
                    )
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print(emailController.text);
                },
                child: Text('get value'))
          ],
        ),
      ),
    );
  }
}
