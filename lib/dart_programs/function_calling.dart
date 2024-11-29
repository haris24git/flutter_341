void main(){

  String result = myFunc(12,23);
  print(result);
}


String myFunc(double a, double b){

  double sum;
  sum = a+b;
  return "sum of $a and $b is $sum";
}