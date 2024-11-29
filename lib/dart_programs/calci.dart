import 'dart:io';

void main(){

    stdout.write("Please enter number1");
    int n1 = int.parse(stdin.readLineSync()!);

    stdout.write("Please enter operation");
    String opr = (stdin.readLineSync()!);

    stdout.write("Please enter number2");
    int n2 = int.parse(stdin.readLineSync()!);


    if( opr== '+' || opr == '-' || opr == '*' || opr == '/'){

      if(opr == '+'){
        int sum = n1+n2;
        stdout.write("The Sum of $n1 and $n2 is $sum");
      }
      else if(opr == '-'){
        int sub = n1-n2;
        stdout.write("The Subtraction of $n1 and $n2 is $sub");
      }
      else if(opr == '*'){
        int multi = n1*n2;
        stdout.write("The Multiplication of $n1 and $n2 is $multi");
      }else if(opr == '/'){
        double div = n1/n2;
        stdout.write("The Division of n1 and n2 is $div");
      }


    }else{

      print("Wrong Operator Selected");
    }
}