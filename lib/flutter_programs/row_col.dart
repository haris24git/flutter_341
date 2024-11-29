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

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text("Flutter App"),
           backgroundColor: Colors.blue,
           centerTitle: true,
         ),
         body:Container(
           height: 600,
           child: Padding(
             padding: const EdgeInsets.all(28.0),
             child: Row(
               children: [

                 // Left section
                 Expanded(
                   flex: 1,
                   child: Container(
                     color: Colors.blue,
                     child: Padding(
                       padding: const EdgeInsets.all(45.0),
                       child: Center(
                         child:Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Center(child: Text('Strawberry Pavlova', style: TextStyle(fontSize:23, fontWeight:FontWeight.bold))),
                             SizedBox(height: 8),
                             Container(
                               padding: EdgeInsets.all(16.0),
                               decoration: BoxDecoration(
                                 color: Colors.blue[50], // Background color for the paragraph
                                 border: Border.all(
                                   color: Colors.black, // Border color
                                   width: 2, // Border width
                                 ),
                                 borderRadius: BorderRadius.circular(8), // Rounded border
                               ),
                               child: Text(
                                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit',
                                 style: TextStyle(fontSize: 16, color: Colors.black87,),textAlign: TextAlign.center,
                                 softWrap: true,
                               ),
                             ),

                             SizedBox(height: 21,),

                            Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Icon(Icons.star, color: Colors.amber, size: 24), // Star icon for rating
                                   SizedBox(width: 8), // Space between star and text
                                   Icon(Icons.star, color: Colors.amber, size: 24), // Star icon for rating
                                   SizedBox(width: 8), // Space between star and text
                                   Icon(Icons.star, color: Colors.amber, size: 24), // Star icon for rating
                                   SizedBox(width: 8), // Space between star and text
                                   Icon(Icons.star, color: Colors.amber, size: 24), // Star icon for rating
                                   SizedBox(width: 8), // Space between star and text
                                   Text(
                                     '                170 Reviews',
                                     style: TextStyle(fontSize: 16, color: Colors.black87),
                                   ),
                                 ],
                               ),

                             SizedBox(height: 40),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distributes icons evenly
                               children: [
                                 Column(
                                   children: [
                                     Icon(Icons.home, size: 40, color: Colors.yellow),
                                     Text("Home"),
                                     SizedBox(height: 16),
                                     Text("25 min"),
                                   ]
                                 ),
                                 Column(
                                   children: [
                                     Icon(Icons.business, size: 40, color: Colors.green),
                                     Text("Business"),
                                     SizedBox(height: 16),
                                     Text("2 min")
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Icon(Icons.school, size: 40, color: Colors.orange),
                                     Text("School"),
                                     SizedBox(height: 16),
                                     Text("9 min"),
                                   ],
                                 ),
                                 Column(
                                   children: [
                                     Icon(Icons.local_hospital, size: 40, color: Colors.red),
                                     Text("Hospital"),
                                     SizedBox(height: 16),
                                     Text("15 min")
                                   ],
                                 ),
                               ],
                             ),

                           ],

                         )
                       ),
                     ),
                   ),
                 ),

                 // Right section
                 Expanded(
                   flex: 2,
                   child: Container(
                     color: Colors.green,
                     child: Center(
                       child: Image.network(
                         'https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630', // Replace with your image URL
                         fit: BoxFit.cover,
                         width: double.infinity,
                         height: double.infinity,
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),



       );
  }

}