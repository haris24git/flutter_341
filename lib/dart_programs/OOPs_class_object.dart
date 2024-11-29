void main(){

   XUV700 rajCar = XUV700("Blue");        //creating object rajCar
   rajCar.paint();
   XUV700 shubhamCar = XUV700("White");   //creating object shubhamCar
   shubhamCar.paint();
   XUV700 saloniCar = XUV700("Orange");   //creating object saloniCar
   saloniCar.paint();
}

class XUV700{
    String ? color;                  //define the color

    XUV700(String yourColor){        //making cunstructor parmeterized
       color = yourColor;
    }
    
    paint(){                         //paint function
      print("Painting color: $color");
    }
}







