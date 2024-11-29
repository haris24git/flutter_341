import 'dart:io';

void main(){
  
    stdout.write("Please Enter number to find even odd");
    int a = int.parse(stdin.readLineSync()!);

    int n = (a%2);

    if(n==0){
        print("$a is even number");
    }else{
        print("$a is odd number");
    }
}

