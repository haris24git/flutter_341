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
          title: 'app',
          home: Form(),
      );
  }

}


class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Container(
              width: 400,
              height: 430,
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              child: Stack(
                children: [
                  // Background image
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent, // Start transparent
                              Colors.black, // End with black
                            ],
                            stops: [0.6, 1.0], // Adjust the gradient range
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.darken, // Blends the gradient with the image
                        child: Image.asset(
                          'assets/images/new2.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),

                  ),
                  // Top text
                  Positioned(
                    top: 20, // Adjust position as needed
                    left: 90, // Adjust position for better centering
                    child: Text(
                      'Welcome to Maxlearn',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center, // Optional: Ensure proper alignment
                    ),
                  ),
                  // Bottom text
                  Positioned(
                    bottom: 20, // Adjust position as needed
                    left: 20, // Adjust position as needed
                   child:Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                          'Let\'s Upgrade your \nlearning experience',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30, // Slightly reduced size for better fit
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start, // Center-align the text
                        ),
                       Text('Changing the way people learn by providing an \ninteractive,engaging and personalized learning',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 16,
                         ),
                       ),
                     ],
                   ),

                  ),
                ],
              ),
            ),
            
            Container(
              child: Column(
                 children: [
                   SizedBox(
                     height: 24,
                   ),
                   

                   
                   ElevatedButton.icon(onPressed: () {}, 
                       icon: Image.asset('assets/images/smartphone.png',height: 24,width: 24,),
                       label: Text('Continue with number', style: TextStyle(fontSize: 17, fontWeight:FontWeight.bold)),
                     style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 77,vertical: 17),
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                       )
                     ),
                   ),

                   SizedBox(
                     height: 30,
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Expanded(
                         child: Divider(
                           thickness: 1,
                           color: Colors.grey,
                           indent: 20,
                           endIndent: 0,
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                         child: Text('or login with', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                       ),

                       Expanded(
                         child: Divider(
                           thickness: 1,
                           color: Colors.grey,
                           indent: 0,
                           endIndent: 20,
                         ),
                       )
                     ],
                   )
                 ],
              ),
            ),

            SizedBox(
              height: 23,
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(onPressed: (){},
                      icon: Image.asset('assets/images/search.png', height: 24,width: 24,),
                      label: Text('Google', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),),
                      style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.white,
                         foregroundColor: Colors.black,
                         padding: EdgeInsets.symmetric(horizontal: 41,vertical: 14),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(12),
                           side: BorderSide(color: Colors.grey,width: 0.2),
                         )
                      ),
                  ),
                  
                  ElevatedButton.icon(onPressed: () {}, 
                      icon: Image.asset('assets/images/facebook.png',height: 24,width: 24,),
                      label: Text('Facebook', style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.grey),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey,
                        padding: EdgeInsets.symmetric(horizontal: 33,vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: Colors.grey,width: 0.2),
                        )
                      ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 100,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? ', style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Colors.grey),),
                Text('Register', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),),
              ],
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:110,vertical: 4),
                child: Divider(
                  thickness: 3,
                  color: Colors.grey,
                  indent: 4,
                  endIndent: 0,
                ),
              ),
            ),
            
            
            
            
          ],
        )




    );
  }

}


class Form extends StatelessWidget{

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController passrController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
         body: Column(
             children: [
               Container(
                 height: 240,
                 width: 400,
                 decoration: BoxDecoration(
                   color: Colors.black,
                 ),
                 child: Stack(
                   children: [

                       // Positioned.fill(
                       //   child: Image.asset('assets/images/register.png',fit: BoxFit.cover,),
                       // ),

                       Positioned(
                          top:54,
                           left: 8,
                           child:Image.asset('assets/images/back_arrow.png',height:50,width:50),
                       ),


                     Positioned(
                       bottom: 20,
                         left: 17,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Register',style: TextStyle(fontSize: 39,fontWeight: FontWeight.bold,color: Colors.white),),
                             Text('Create your account', style: TextStyle(fontSize: 16,color: Colors.white),),
                           ],
                         ))
                   ],
                 ),
               ),

               Container(
                 child: Padding(
                   padding: const EdgeInsets.all(14.0),
                   child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height:60,
                          width: 360,
                          child: TextField(
                             controller: nameController,
                             keyboardType: TextInputType.text,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                             decoration: InputDecoration(
                               label: Text('Name'),
                               hintText: 'Enter the name',
                                 hintStyle: TextStyle(
                                   fontWeight: FontWeight.bold,
                                 ),
                               enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(color: Colors.grey,width: 1),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(color: Colors.grey,width: 2),
                               )
                             ),
                          ),
                        ),
                         SizedBox(
                           height: 21,
                         ),
                        Container(
                          height:60,
                          width: 360,
                          child: TextField(
                             controller: emailController,
                             keyboardType: TextInputType.text,
                             style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                               color: Colors.black,
                             ),
                            decoration: InputDecoration(
                              label: Text('Email'),
                              hintText: 'email@gmail.com',
                             enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(color: Colors.grey,width: 1),
                             ),
                             focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey,width: 2),
                             )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Container(
                          height:60,
                          width: 360,
                          child: TextField(
                              controller: passController,
                              obscureText: true,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                label: Text('Password'),
                                hintText: 'enter password',
                                suffixIcon: Icon(Icons.visibility_off),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey,width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey,width: 2),
                                )
                              ),
                          ),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Container(
                          height:60,
                          width: 360,
                          child: TextField(
                              controller: passrController,
                              obscureText: true,
                            style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.bold,
                               color: Colors.black
                            ),
                            decoration: InputDecoration(
                               label: Text('Repeat Password'),
                               hintText: 'Repeat Password',
                              suffixIcon: Icon(Icons.visibility_off),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey,width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(color: Colors.grey,width: 2),
                              )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(onPressed: () {},
                            child: Text('Register', style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                            style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.greenAccent,
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(horizontal: 145,vertical: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.greenAccent,width: 2),
                              )
                            ),
                        ),
                        SizedBox(
                          height: 38,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('You have an account?', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.grey),),
                            Text(' Log in', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.greenAccent),)
                          ],
                        ),

                      ],
                   ),
                 ),
               ),

               Container(
                 child: Expanded(child: Divider(
                   thickness: 3,
                   indent: 120,
                   endIndent: 120,
                   color: Colors.grey,
                 ),
                 ),
               )
             ],
         )
   );
  }

}