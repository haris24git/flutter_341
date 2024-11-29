import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {

  List<Map<String, dynamic>> mData = [
    {
      "name" : "Haris",
      "msg" : "How are you?",
      "time" : "11:12 am",
      "unreadCount" : "2",
    },
    {
      "name" : "Ravi",
      "msg" : "will you come to office?",
      "time" : "04:12 am",
      "unreadCount" :"1",
    },
    {
      "name" : "Arif",
      "msg" : "Hello",
      "time" : "02:23 am",
      "unreadCount" : "2"
    },
    {
      "name" : "Sana",
      "msg" : "You there?",
      "time" : "11:12 pm",
      "unreadCount" : "2",
    },
    {
      "name" : "Asif",
      "msg" : "pick up the call",
      "time" : "09:43 pm",
      "unreadCount" : "3"
    },  ];


  runApp(MaterialApp(
    home: Scaffold(

      appBar: AppBar(
        title: Text("Askapp"),
        centerTitle: true,
        backgroundColor: Color(0xFF0D47A1),
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.home)
        ],
      ),

      body: ListView.builder(
          itemCount: mData.length,
         itemBuilder: (_,index){
           return ListTile(
               leading: Container(
                 width: 50,
                 height: 50,
                 decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image : DecorationImage(
                       fit: BoxFit.cover,
                       image: NetworkImage("https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg"),
                     )
                 ),
               ),

               title: Text('${mData[index]["name"]}'),
               subtitle: Text('${mData[index]["msg"]}'),


               trailing: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('${mData[index]["time"]}', style: TextStyle(color: Colors.green)),
                   SizedBox(
                     height: 7,
                   ),
                   CircleAvatar(
                       radius: 12,
                       backgroundColor: Colors.green,
                       child: Text('${mData[index]["unreadCount"]}', style: TextStyle(color: Colors.white))
                   )
                 ],
               ),

             );
         },
      )

    )
  ));
}


