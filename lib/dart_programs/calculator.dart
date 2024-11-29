import 'dart:io';

void main() {
  // Displaying a welcome message
  print('Welcome to the Dart Calculator!');

  // Input for the first number
  stdout.write('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  // Input for the second number
  stdout.write('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Input for the operation to perform
  print('Choose an operation (+, -, *, /): ');
  String operation = stdin.readLineSync()!;

  // Variable to store the result
  double result;

  // Perform the operation based on user input
  switch (operation) {
    case '+':
      result = num1 + num2;
      print('The sum of $num1 and $num2 is $result');
      break;
    case '-':
      result = num1 - num2;
      print('The difference between $num1 and $num2 is $result');
      break;
    case '*':
      result = num1 * num2;
      print('The product of $num1 and $num2 is $result');
      break;
    case '/':
    // Check to avoid division by zero
      if (num2 != 0) {
        result = num1 / num2;
        print('The division of $num1 by $num2 gives $result');
      } else {
        print('Error: Division by zero is not allowed!');
      }
      break;
    default:
      print('Invalid operation selected!');
  }
}
