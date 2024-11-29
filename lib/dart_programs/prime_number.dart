import 'dart:io';

void main(){

     stdout.write("Enter the number to check prime number");
     int no = int.parse(stdin.readLineSync()!);

     bool isPrime = true;

     for(int i = 2; i<=no~/2; i++) {
       if (no % i == 0) {
         isPrime = false;    //like 4 is not prime number it will be zero 0;
         break;
       }
     }

     if(isPrime){
       print("$no is Prime Number");
     }else{
       print("$no is not Prime Number");
     }
}