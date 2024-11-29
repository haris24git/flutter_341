import 'package:demoapp/dart_programs/counter.dart';
import 'package:demoapp/flutter_programs/bmi_cal.dart';
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
        title: 'MyApp',
        home: MyLogin(),
    );
  }

}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:   Stack(
         // clipBehavior: Clip.none,
           children: [
             Container(
               width: double.infinity,
               height: double.infinity,
               color: Colors.white,
                 child: Column(
                   children: [
                     SizedBox(
                       height: 520,
                     ),
                     Text('Leafboard', style: TextStyle(fontSize: 30, fontWeight:FontWeight.bold),),
                     SizedBox(
                       height: 33,
                     ),
                     Text('A platform built for new way of working', style: TextStyle(fontSize: 18,),),
                     SizedBox(
                       height: 60,
                     ),
                     ElevatedButton(onPressed: (){}, child: Text('Get Started for Free  >', style: TextStyle(fontSize:17),),
                     style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 55,vertical: 17),
                       shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30),
                       ),
                     ),
                     ),

                     SizedBox(
                       height: 26,
                     ),

                     Container(
                       width: 140,
                       height: 5,
                       decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(60),
                       ),
                     )
                   ],
                 ),

             ),
             Container(
               width: double.infinity,
               height: 400,

                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(150),
                     bottomRight: Radius.circular(150),
                  ),
                ),
             ),
             Center(
               child: Container(
                 width: 190,
                 height: 190,
                 decoration: BoxDecoration(
                   color: Colors.blueGrey[50],
                   borderRadius: BorderRadius.circular(120),
                   border: Border.all(
                         width: 3,
                         color: Colors.white
                   ),
                 ),
                 child: Center(
                   child: Container(
                     width: 140,
                     height: 140,
                     child: Image.asset('assets/images/leaf.png', fit: BoxFit.contain,),
                   ),
                 ),
               ),
             ),

           ],
         ),

    );
  }
}

class MyLogin extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: [
               Container(
                  width: double.infinity,
                   height: double.infinity,
                   color: Colors.white,

                 child: Column(
                   children: [
                     SizedBox(
                       height: 130,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/leaf.png', width: 45, height: 45,),
                         Text('Leafboard', style: TextStyle(fontSize: 39,),),
                       ],
                     ),
                     SizedBox(
                       height: 23,
                     ),
                     Text('Work without limits', style: TextStyle(fontSize: 20),),

                     SizedBox(
                       height: 24,
                     ),

                     Padding(
                       padding: const EdgeInsets.all(23.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Your email address', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                             SizedBox(
                               height: 9,
                             ),
                           Container(
                             height: 53,
                             child: TextField(
                               keyboardType: TextInputType.text,
                               decoration: InputDecoration(
                                 label: Text('harishashmi24@gmail.com'),
                                 enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(23),
                                   borderSide: BorderSide(
                                      width: 1,
                                     color: Colors.blueGrey,
                                   ),
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.black,
                                    )
                                 ),


                               ),
                             ),
                           ),
                          SizedBox(
                            height: 16,
                          ),

                          Text('Choose a password', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold),),

                           SizedBox(
                             height: 9,
                           ),

                           Container(
                             height: 53,
                             child: TextField(
                               keyboardType: TextInputType.text,
                               obscureText: true,
                               decoration: InputDecoration(
                                    label: Text('min.8 characters'),
                                   suffixIcon: Icon(Icons.visibility_off),
                                 enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(23),
                                     borderSide: BorderSide(
                                        width: 1,
                                       color: Colors.blueGrey,
                                     )
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(23),
                                    borderSide: BorderSide(
                                       width: 2,
                                       color: Colors.black,
                                    )
                                 )
                               ),
                             ),
                           ),
                           SizedBox(
                             height: 18,
                           ),

                           Center(
                             child: ElevatedButton(onPressed: () {}, child: Text('Continue', style: TextStyle(fontSize:18,),),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(350, 55),
                                   backgroundColor: Colors.greenAccent,
                                   foregroundColor: Colors.white,
                                   // padding: EdgeInsets.symmetric(horizontal:136,vertical: 17),
                                ),
                             ),
                           ),

                           SizedBox(
                             height: 23,
                           ),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Expanded(
                                 child: Divider(
                                   thickness: 1,           // Set the thickness of the divider line
                                   color: Colors.grey,     // Color of the divider line
                                   indent: 10,             // Space before the divider starts
                                   endIndent: 0,          // Space after the divider ends
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                 child: Text(
                                   'or',
                                   style: TextStyle(
                                     fontSize: 16,         // Adjust font size
                                     color: Colors.grey,    // Text color
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ),
                               Expanded(
                                 child: Divider(
                                   thickness: 1,
                                   color: Colors.grey,
                                   indent: 0,
                                   endIndent: 10,
                                 ),
                               ),
                             ],
                           ),

                           SizedBox(
                             height: 23,
                           ),


                           ElevatedButton.icon(
                             onPressed: () {
                               // Button action here
                             },
                             icon: Image.asset('assets/images/search.png',
                               height: 24,
                               width: 24,
                             ),
                             label: Text('Sign up with Google', style: TextStyle(fontSize: 16),),
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.white,
                               foregroundColor: Colors.black,
                               minimumSize: Size(350, 55),
                               shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(color: Colors.transparent, width: 2),
                               ),

                             ),
                           ),


                           SizedBox(
                             height: 23,
                           ),

                           ElevatedButton.icon(
                             onPressed: () {
                               // Button action here
                             },
                             icon: Image.asset('assets/images/apple.png',
                               height: 24,
                               width: 24,
                             ),
                             label: Text('Sign up with Apple', style: TextStyle(fontSize:16),),
                             style: ElevatedButton.styleFrom(
                               minimumSize: Size(350, 55),
                               backgroundColor: Colors.white,
                               foregroundColor: Colors.black,
                               shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(color: Colors.transparent,width: 2),
                               )
                             ),
                           ),





                         ],
                       ),
                     )
                   ],
                 ),
               ),



            Positioned(
              top: 0,
              left: 100,
               child: Container(
                  width: 200,
                  height: 32,

                  decoration: BoxDecoration(
                    color: Colors.black,
                     borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)

                     ),
                  ),
                )
            ),
            ],
          ),
    );
  }
}

