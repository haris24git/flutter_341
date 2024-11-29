class A {
  int add(int a, int b) {
    return a + b;
  }
}

class B extends A {
  @override
  int add(int a, int b) {
    return a * b;
  }
}

void main() {
  A a = A();
  int result = a.add(5, 6);
  print("Result from class A: $result");

  B b = B();
  int resultB = b.add(5, 6);
  print("Result from class B: $resultB");
}
