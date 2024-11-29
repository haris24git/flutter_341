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

      title: "MyApp",
      home: MyPage(),
    );
  }

}

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Flutter'),
         backgroundColor: Colors.indigo,
       ),

      body: Container(
        height: 430,
        width: 1002,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black,
            )
        ),
        child: Row(
          children: [
            Container(
              width: 300,
              height: 500,
              color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 11),
              child: Column(
                children: [
                   SizedBox(
                     height: 30,
                   ),
                  Container(
                    width:double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE6F0FA),
                      border: Border.all(
                        width: 1,
                        color: Color(0xff000000)
                      )
                    ),
                  child: Center(child: Text('Haris', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE6F0FA),
                       border: Border.all(
                         width: 1,
                         color: Color(0xff000000)
                       )
                    ),
                    child: Center(child: Text('Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova.Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.', style: TextStyle(fontSize: 14),textAlign: TextAlign.center,)),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                       color: Color(0xffE6F0FA),
                       border: Border.all(
                           width: 1,
                           color: Color(0xff000000),
                       )
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.black54, size: 14,),
                            Icon(Icons.star, color: Colors.black54, size:14,),
                            Icon(Icons.star, color:Colors.black54, size:14),
                            Icon(Icons.star, color:Colors.black54, size:14),
                          ],
                        ),
                        Text('170 Reviews'),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Container(
                      width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 30),
                     decoration: BoxDecoration(
                        color: Color(0xffE6F0FA),
                        border: Border.all(
                            width: 1,
                            color: Color(0xff000000)
                        )
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Column(
                           children: [
                             Icon(Icons.kitchen_outlined, color: Colors.green, size: 16,),
                             Text('PREP:'),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('25 min'),
                             ),
                           ],
                         ),

                         Column(
                           children: [
                             Icon(Icons.timer, color: Colors.green, size: 16,),
                             Text('COOK:'),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('1 hr'),
                             )
                           ],
                         ),

                         Column(
                           children: [
                             Icon(Icons.restaurant, color: Colors.green, size: 16,),
                             Text('FEEDS'),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('4-6 hr'),
                             )
                           ],
                         )
                       ],
                     ),
                  )


                ],
              ),
            ),


            Container(
              width: 700,
              height: 500,
              color: Colors.lime,
              // child: Image.asset("assets/images/bg_red.png",),
              child: Image.network('https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630', fit: BoxFit.cover,),
            )

          ],




        ),
      ),
    );
  }


}