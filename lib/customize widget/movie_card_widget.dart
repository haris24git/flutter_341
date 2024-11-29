import 'package:demoapp/dart_programs/counter.dart';
import 'package:flutter/material.dart';


class MovieCardWidget extends StatelessWidget {
  double mWidth;
  double mHeight;
  String imgPath;
  bool isNetflixLogo;
  bool isTopTen;

  MovieCardWidget({this.mWidth = 170, this.mHeight = 260, required this.imgPath, this.isNetflixLogo = false, this.isTopTen = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.5),
      width: mWidth,
      height: mHeight,
      child: Stack(
        children: [
          isNetflixLogo ? Image.asset("assets/images/ic_logo_n.png", width: 35, height: 35,) : Container(),
          isTopTen ? Positioned(
            right: 0,
            child: Container(
              width: 30,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(topRight: Radius.circular(7))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("TOP", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text("10", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),)
                ],
              ),
            ),
          ) : Container()
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)
      ),
    );
  }
}
