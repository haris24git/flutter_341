import 'dart:io';

void main(){

  stdout.write("1.Enter First Number");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("2.Enter Second Number");
  int num2 = int.parse(stdin.readLineSync()!);

  int sum = num1 + num2;
  print(sum);
}