class Calculator {
  // Add two integers
  int add(int a, int b) {
    return a + b;
  }

  // Add three integers
  int addition(int a, int b, int c) {
    return a + b + c;
  }
}

void main() {
  Calculator calc = Calculator();
  print(calc.add(2, 3));       // Output: 5
  print(calc.addition(1, 2, 3));    // Output: 6
}
