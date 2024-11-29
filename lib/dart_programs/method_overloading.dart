void main(){

    print(add(11,5));
    print(add(11,5, c:3));
    print(add(11,5, c:3, d:17));

}


  int add(int a,int b, {int c=0, int d=0}){

      return a+b+c+d;

  }