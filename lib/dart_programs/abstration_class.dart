abstract class Vehicle {
  void start(); // सिर्फ डिक्लेरेशन
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car engine started");
  }
}

void main() {
  Car myCar = Car();
  myCar.start(); // "Car engine started" आउटपुट आएगा
}
