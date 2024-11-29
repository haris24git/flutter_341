// import 'package:demoapp/dart_programs/counter.dart';
// import 'package:demoapp/flutter_programs/login_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//    runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//          title: "MyApp",
//          home: MyHome(),
//     );
//   }
//
// }
//
// class MyHome extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(
//         //   backgroundColor: Colors.cyanAccent,
//         // ),
//       body: Column(
//          children: [
//                 Container(
//                   margin: EdgeInsets.only(top: 26.0),
//                   child: Padding(
//                     padding: const EdgeInsets.only(top:32.0,left: 32,right: 32),
//                     child: Stack(
//                      alignment: Alignment.center,
//                      children: [
//
//                        Image.asset('assets/images/like.png'),
//
//                        Text('24.4', style: TextStyle(fontSize:48,fontWeight: FontWeight.bold,color: Colors.red,),),
//                      ],
//                                    ),
//                   ),
//                 ),
//
//
//
//
//            Container(
//              child: Text('Healthy', style: TextStyle(fontSize: 42,color: Colors.cyan,fontWeight:FontWeight.bold,),),
//            ),
//
//            SizedBox(
//              height: 12,
//            ),
//
//            Container(
//                padding: EdgeInsets.all(16.0),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: [
//                  Column(
//                    children: [
//                      Text('Male', style: TextStyle(fontSize: 26,),),
//                      Image.asset('assets/images/male.png',width:75,height: 75,)
//                    ],
//                  ),
//                  Column(
//                    children: [
//                      Text('Female', style: TextStyle(fontSize: 26,),),
//                      Image.asset('assets/images/female.png', width: 75, height: 75,)
//                    ],
//                  )
//                ],
//              ),
//
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Column(
//                     children: [
//                       Text('Age', style: TextStyle(fontSize: 18,color: Colors.grey),),
//                       Text('22', style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
//                     ],
//                   ),
//
//
//                   Column(
//                     children: [
//                       Text('Height', style: TextStyle(fontSize: 18,color: Colors.grey),),
//                       Text('175', style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
//                     ],
//                   ),
//
//                   Column(
//                     children: [
//                       Text('Weight', style: TextStyle(fontSize: 18,color: Colors.grey),),
//                       Text('75', style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),)
//                     ],
//                   )
//                 ],
//               ),
//            ),
//           SizedBox(
//             height: 20,
//           ),
//            Container(
//              width: double.infinity,
//              height: 63,
//              color: Colors.cyan,
//                child: Center(child: Text('Calculate BMI', style: TextStyle(fontSize: 28,color: Colors.white),)),
//            ),
//
//          ],
//           ),
//
//     );
//   }
//
// }