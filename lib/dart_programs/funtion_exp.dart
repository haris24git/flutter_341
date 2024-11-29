import 'dart:io';
void main(){

String result = myFunc(5000, 5000);
print(result);

}

String myFunc(double a, double b){
  double sum;

  sum = a+b;
  return "the sum of $a and $b is $sum";
}