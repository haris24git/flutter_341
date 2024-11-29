import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/customize widget/movie_card_widget.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: HomePage(),
    );
  }

}

class HomePage extends StatelessWidget {

  List<Map<String, dynamic>> arrImgPath = [
    {
      "imgPath" : "assets/images/movie_1.jpg",
      "isNetflixLogo" : true,
      "isTopTen" : false,
    },
    {
      "imgPath" : "assets/images/movie_2.jpg",
      "isNetflixLogo" : false,
      "isTopTen" : true,
    },
    {
      "imgPath" : "assets/images/movie_3.jpg",
      "isNetflixLogo" : true,
      "isTopTen" : false,
    },
    {
      "imgPath" : "assets/images/movie_4.jpg",
      "isNetflixLogo" : true,
      "isTopTen" : true,
    },
    {
      "imgPath" : "assets/images/movie_5.jpg",
      "isNetflixLogo" : false,
      "isTopTen" : true,
    },
    {
      "imgPath" : "assets/images/movie_6.jpg",
      "isNetflixLogo" : true,
      "isTopTen" : false,
    },

  ];

  List<Map<String, dynamic>> bestSeriesImages = [
    {
      "imgPath": "assets/images/series_1.jpg",
      "isNetflixLogo" : true,
      "isTopTen" : false,
    },
    {
      "imgPath": "assets/images/series_2.jpg",
      "isNetflixLogo" : true,
      "isTopTen" : false,
    },
    {
      "imgPath": "assets/images/series_3.jpg",
      "isNetflixLogo" : true,
      "isTopTen" : true,
    },
    {
      "imgPath": "assets/images/series_5.jpg",
      "isNetflixLogo" : true,
      "isTopTen" : true,
    },
    {
      "imgPath": "assets/images/series_6.jpg",
      "isNetflixLogo" : false,
      "isTopTen" : false,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Indian Movies',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: Column(
          children: [
            // Add other widgets here if needed
            Expanded(
              child: GridView.builder(
                itemCount: arrImgPath.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  childAspectRatio: 3 / 4.4, // Aspect ratio of the grid items
                ),
                itemBuilder: (_, index) {
                  return MovieCardWidget(
                    isTopTen: arrImgPath[index]['isTopTen'],
                    isNetflixLogo: arrImgPath[index]['isNetflixLogo'],
                    imgPath: arrImgPath[index]['imgPath'],
                  );
                },
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text('Upcoming Series', style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: SizedBox(
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bestSeriesImages.length,
                      itemBuilder: (_, index) {
                        return MovieCardWidget(
                          isTopTen: bestSeriesImages[index]['isTopTen'],
                          isNetflixLogo: bestSeriesImages[index]['isNetflixLogo'],
                          imgPath: bestSeriesImages[index]['imgPath'],
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
