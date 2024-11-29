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
        debugShowCheckedModeBanner: false,
        title: "App",
        home: MyHome(),
    );
  }

}

class MyHome extends StatelessWidget{

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title: Center(child: Text('Login', style: TextStyle(fontSize: 21,),)),
          backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 16),
        child: Column(
          children: [
            TextField(
               controller: emailController,
               keyboardType:TextInputType.text,
               decoration: InputDecoration(
                 label: Text('Email'),
                 hintText: "Enter your email",
                 suffixText: "@gmail.com",
                 prefixIcon: Icon(Icons.account_circle_outlined),
                 enabledBorder:
                     OutlineInputBorder(
                       borderRadius: BorderRadius.circular(21),
                       borderSide:BorderSide(
                          width: 1,
                          color: Colors.blue,
                       ),
                     ),
                   focusedBorder:
                       OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.green,
                          )

                       )
               ),
            ),
            SizedBox(
              height: 26,
            ),
            TextField(
                 controller:passController,
                 keyboardType: TextInputType.text,
                 obscureText: true,
              decoration: InputDecoration(
                label: Text('Passward'),
                suffixIcon: Icon(Icons.visibility),
                enabledBorder:
                    OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                focusedBorder:
                    OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.green,
                      )
                    )

              ),
            ),
            SizedBox(
              height: 26,
            ),
           TextField(
              controller: passController,
              keyboardType: TextInputType.text,
             decoration: InputDecoration(
               label: Text('Name'),
               enabledBorder:
                 OutlineInputBorder(
                   borderRadius: BorderRadius.circular(21),
                   borderSide: BorderSide(
                     width: 1,
                     color: Colors.blue,
                   ),
                 ),
               focusedBorder:
                     OutlineInputBorder(
                       borderRadius: BorderRadius.circular(21),
                       borderSide: BorderSide(
                         width:2,
                         color: Colors.green,
                       ),
                     ),
             ),
           ),
            SizedBox(
              height: 18,
            ),
            ElevatedButton(onPressed: (){
                print(emailController.text);
                print(passController.text);
            }, child: Text('Submit'))
          ],
        ),
      ),
    );
  }

}