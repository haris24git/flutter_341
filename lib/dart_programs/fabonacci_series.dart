void main() {
  int n = 10; // Number of terms in the Fibonacci series
  print("Fibonacci series up to $n terms:");

  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}

// Function to calculate Fibonacci numbers
int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
