class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.sound();  // Output: Dog barks
  myCat.sound();  // Output: Cat meows
}
