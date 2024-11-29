import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dynamic Sections',
      home: FirstScreen(),
    );
  }
}

class HomePage extends StatelessWidget {

  TextEditingController searchController = TextEditingController();

  final List<String> bestOfMonthImages = [
    'assets/images/img_4.jpg',
    'assets/images/img_2.jpg',
    'assets/images/img_3.jpg',
    'assets/images/img_5.jpg',
    'assets/images/img_1.jpg',
  ];

  final List<Color> colorToneColors = [
    Colors.green,
    Colors.greenAccent,
    Colors.cyan,
    Colors.black,
    Colors.indigo,
    Colors.grey,
    Colors.cyan,
    Colors.lime,
    Colors.amber,
    Colors.deepPurple,
  ];
  final List<Map<String, dynamic>> sectionThreeColors = [
    {"name": "Abstract", "bgColor": Colors.green, "image": "assets/images/n2.jfif"},
    {"name": "Nature", "bgColor": Colors.orange, "image": "assets/images/n1.jpg"},
    {"name": "Feature", "bgColor": Colors.blue, "image": "assets/images/n3.jpg"},
    {"name": "Creator", "bgColor": Colors.purple, "image": "assets/images/n4.jpg"},
    {"name": "Raman", "bgColor": Colors.green, "image": "assets/images/img_1.jpg"},
    {"name": "Raghav", "bgColor": Colors.orange, "image": "assets/images/img_1.jpg"},
    {"name": "Ramanujan", "bgColor": Colors.blue, "image": "assets/images/img_1.jpg"},
    {"name": "Rajeev", "bgColor": Colors.purple, "image": "assets/images/img_1.jpg"},
    {"name": "Raman", "bgColor": Colors.green, "image": "assets/images/img_1.jpg"},
    {"name": "Haris", "bgColor": Colors.orange, "image": "assets/images/img_1.jpg"},
    {"name": "Ramanujan", "bgColor": Colors.blue, "image": "assets/images/img_1.jpg"},
    {"name": "Rajeev", "bgColor": Colors.purple, "image": "assets/images/img_1.jpg"},
    {"name": "Raman", "bgColor": Colors.green, "image": "assets/images/img_1.jpg"},
    {"name": "Raghav", "bgColor": Colors.orange, "image": "assets/images/img_1.jpg"},
    {"name": "sana", "bgColor": Colors.blue, "image": "assets/images/img_1.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                   controller: searchController,
                   keyboardType: TextInputType.text,
                decoration: InputDecoration(
                   label: Text('Find Wallpaper...', style: TextStyle(fontSize:17,color: Colors.grey),),
                   suffixIcon: Icon(Icons.search,size: 35,color:Colors.grey,),
                   filled: true,
                   fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color:Colors.white,width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white60,width: 2),
                  )

                ),
              ),
            ),



              Padding(
                padding: const EdgeInsets.only(bottom: 12,left: 12,top: 15),
                child: Text(
                  'Best of the month',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestOfMonthImages.length,
                  itemBuilder: (_, index) {
                    return Container(
                      width: 150,
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(bestOfMonthImages[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    );

                  },
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Color Tone',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colorToneColors.length,
                  itemBuilder: (_, index) {
                    return Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal:5),
                      decoration: BoxDecoration(
                        color: colorToneColors[index],
                        borderRadius: BorderRadius.circular(10),
                        // shape: BoxShape.circle,
                      ),
                    );
                  },
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    childAspectRatio: 2/1.3
                  ),
                  itemCount: sectionThreeColors.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(sectionThreeColors[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Center(
                          child: Text(
                            sectionThreeColors[index]["name"],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {

  final List<Map<String, dynamic>> sectionThreeColors = [
    {"name": "Abstract", "bgColor": Colors.green, "image": "assets/images/n2.jfif"},
    {"name": "Nature", "bgColor": Colors.orange, "image": "assets/images/n1.jpg"},
    {"name": "Feature", "bgColor": Colors.blue, "image": "assets/images/n3.jpg"},
    {"name": "Creator", "bgColor": Colors.purple, "image": "assets/images/n4.jpg"},
    {"name": "Raman", "bgColor": Colors.green, "image": "assets/images/img_1.jpg"},
    {"name": "Raghav", "bgColor": Colors.orange, "image": "assets/images/img_1.jpg"},
    {"name": "Ramanujan", "bgColor": Colors.blue, "image": "assets/images/img_1.jpg"},
    {"name": "Rajeev", "bgColor": Colors.purple, "image": "assets/images/img_1.jpg"},
    {"name": "Raman", "bgColor": Colors.green, "image": "assets/images/img_1.jpg"},
    {"name": "Haris", "bgColor": Colors.orange, "image": "assets/images/img_1.jpg"},
    {"name": "Ramanujan", "bgColor": Colors.blue, "image": "assets/images/img_1.jpg"},
    {"name": "Rajeev", "bgColor": Colors.purple, "image": "assets/images/img_1.jpg"},
    {"name": "Raman", "bgColor": Colors.green, "image": "assets/images/img_1.jpg"},
    {"name": "Raghav", "bgColor": Colors.orange, "image": "assets/images/img_1.jpg"},
    {"name": "sana", "bgColor": Colors.blue, "image": "assets/images/img_1.jpg"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nature',
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                  ),
                   ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  }, style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.cyan,
                     foregroundColor: Colors.white,
                  ),
                      child: Text("Back")
                   ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '36 Wallpapers available',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
              SizedBox(
                height: 21,
              ),

               Expanded(child: GridView.builder(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   crossAxisSpacing: 18,
                   mainAxisSpacing: 18,
                   childAspectRatio: 2/3,
                 ),
                   itemCount: sectionThreeColors.length,
                 itemBuilder: (_,index) {
                    return Container(
                      height: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(sectionThreeColors[index]['image']),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(18)
                      ),
                    );
               }
               )),

          ],
        ),
      ),
    );
  }


}

