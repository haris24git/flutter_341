import 'package:demoapp/dart_programs/counter.dart';
import 'package:demoapp/flutter_programs/bmi_cal.dart';
import 'package:demoapp/flutter_programs/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: "newApp",
       home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }

}


class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _HomePageState();
}

class _HomePageState extends State<MyHome>{

  TextEditingController billController = TextEditingController();

  String perPersonBillText = "000";
  String  totalBillText = "000";
  String totalTipText = "000";
  int splitCount = 1;

  double selectedTipPercentage = 0.0;

  void _handleTipSelection(double percentage) {
    setState(() {
      selectedTipPercentage = percentage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
            height: 840,
         color: Colors.grey.withOpacity(0.1),
         child: SingleChildScrollView(
         child: Column(
             children: [
                    Container(
                      margin: EdgeInsets.only(top: 67.0),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/hat.png',height: 100,width: 100,),
                         SizedBox(
                           width: 17,
                         ),

                           Column(
                             children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                   children: [
                                     Text('Mr', style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,),),


                                    Text('TIP',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),textAlign:TextAlign.end ,),

                                   ],
                                 ),



                            Padding(
                              padding: const EdgeInsets.only(right:10.0),
                              child: Text('Calculator',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                            ),


                             ],
                           ),

                       ],
                      ),
                    ),

                   SizedBox(
                     height: 35,
                   ),

                   Container(
                       height: 220,
                       width: 340,
                     decoration: BoxDecoration(
                         color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: Colors.transparent,
                        ),
                       borderRadius: BorderRadius.circular(21),

                     ),
                     child: Column(
                       children: [
                         SizedBox(
                           height: 12,
                         ),
                         Text('total p/person', style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                         Text('\$$perPersonBillText', style: TextStyle(fontSize:52,fontWeight:FontWeight.bold),),
                         Divider(
                           color: Colors.black,         // Line color
                           thickness: 1,               // Line thickness
                           indent: 16,                 // Left spacing
                           endIndent: 16,              // Right spacing
                         ),

                         SizedBox(
                           height: 8,
                         ),

                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 18),
                           child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Column(
                                 children: [
                                   Text('Total bill', style: TextStyle(fontSize:20,fontWeight:FontWeight.bold ),),
                                   Text('\$$totalBillText',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.cyan),)
                                 ],
                               ),
                               Column(
                                 children: [
                                   Text('Total tip', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                   Text('\$$totalTipText', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.cyan),)
                                 ],
                               )
                             ],
                           ),
                         )
                       ],
                     ),
                   ),




               Container(
                 padding: EdgeInsets.all(16), // Add padding around the container
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to start within the column
                       children: [
                         Text('Enter', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                         Text('your bill', style: TextStyle(fontSize: 20)),
                       ],
                     ),
                     SizedBox(width: 20), // Add spacing between the columns
                     Column(
                       children: [
                         Container(
                           width: 240,
                           child: TextField(
                             controller: billController,
                             // keyboardType: TextInputType.text,
                             decoration: InputDecoration(
                               label: Text('\$', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
                               filled: true, // Enables background color
                               fillColor: Colors.white, // Light background color
                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(
                                   color: Colors.white, // White border color
                                   width: 1,
                                 ),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(
                                   color: Colors.white, // White border color when focused
                                   width: 1,
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),

               Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         padding: EdgeInsets.only(bottom:32,left: 5),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Choose', style: TextStyle(fontSize:24,fontWeight: FontWeight.bold),),
                              Text('your tip', style: TextStyle(fontSize:20),),
                            ],
                         ),
                       ),
                       SizedBox(
                         width: 9,
                       ),
                       Column(
                         children: [
                           Container(
                             padding: EdgeInsets.only(top:35),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 ElevatedButton(onPressed: () => _handleTipSelection(10.0), child: Text('10%', style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                                 style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.cyan,
                                    foregroundColor: Colors.white,
                                   padding: EdgeInsets.symmetric(horizontal: 24,vertical: 14),
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10),
                                     side: BorderSide(color:Colors.transparent,width: 2),
                                   ),
                                 )
                                   ),

                                 SizedBox(width: 8),
                                 ElevatedButton(onPressed: () => _handleTipSelection(15.0), child: Text('15%',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                   style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.cyan,
                                     foregroundColor: Colors.white,
                                     padding: EdgeInsets.symmetric(horizontal: 24,vertical: 14),
                                     shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(10),
                                       side: BorderSide(color:Colors.transparent,width: 2)
                                     ),
                                   ),

                                 ),
                                 SizedBox(width: 8),
                                 ElevatedButton(onPressed: () => _handleTipSelection(20.0), child: Text('20%',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.cyan,
                                     foregroundColor: Colors.white,
                                     padding: EdgeInsets.symmetric(horizontal: 24,vertical: 14),
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10),
                                       side: BorderSide(color: Colors.transparent,width: 2),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                            SizedBox(
                              height: 12,
                            ),
                            ElevatedButton(onPressed: () {

                              var bill = double.parse(billController.text);

                              var tipPerc = selectedTipPercentage;

                              num totalTip = bill * (tipPerc / 100);

                              num totalBill = bill + totalTip;

                              perPersonBillText = (totalBill / splitCount).toStringAsFixed(2);
                              totalBillText = totalBill.toStringAsFixed(2);
                              totalTipText = totalTip.toStringAsFixed(2);


                              setState(() {
                                totalTipText = totalTipText;
                                totalBillText = totalBillText;
                                perPersonBillText = perPersonBillText;
                              });








                            },
                                 child: Text('Custom Tip', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                 style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.cyan, // Background color
                                     foregroundColor: Colors.white, // Text color
                                   padding: EdgeInsets.symmetric(horizontal: 83, vertical: 14), // Padding inside button
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(10), // Rounded corners
                                     side: BorderSide(color: Colors.transparent, width: 2), // Border color and width
                                   ),
                                 ),
                             ),

                         ],
                       ),

                     ],
                  ),
               ),


               SizedBox(
                 height: 15,
               ),

               Container(
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Split', style: TextStyle(fontSize:24,fontWeight: FontWeight.bold ),),
                          Text('the total', style: TextStyle(fontSize: 20) ,),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 18),
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: () {
                              setState(() {
                                splitCount = (splitCount > 1) ? splitCount - 1 : 1;

                              });

                            }, child: Text('-', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                               style: ElevatedButton.styleFrom(
                                   backgroundColor: Colors.cyan,
                                 foregroundColor: Colors.white,
                                 padding: EdgeInsets.symmetric(horizontal: 24,vertical: 14),
                                 shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)
                                    ),
                                    side: BorderSide(color: Colors.transparent,width: 2),
                                 ),
                               ),
                            ),
                            Container(
                              height: 51,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 2,
                                    color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Center(child: Text('$splitCount', style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
                            ),
                            ElevatedButton(onPressed: () {
                              setState(() {
                                splitCount += 1;

                              });

                            }, child: Text('+', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.cyan,
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 24,vertical: 14),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                       topRight: Radius.circular(10),
                                       bottomRight: Radius.circular(10)
                                    ),
                                    side: BorderSide(color: Colors.transparent,width: 2),
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                   ],
                 ),
               )


             ],
         ),

       ),
       ),
    );
  }

}
