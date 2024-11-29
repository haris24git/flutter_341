



// Parent class (superclass)
class Animal {
  String name;

  Animal(this.name);                    // Constructor

  void sound() {                        //Method
    print("$name makes a sound");
  }
}

// Child class (subclass)
class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name); // Calling the Parent class constructor

  void bark() {
    print("$name barks");
  }

  // Overriding method from parent class
  @override
  void sound() {
    print("$name (a $breed) barks loudly");         //Override the method sound
  }
}

void main() {
  // Creating an object of the Dog class
  Dog dog = Dog("Buddy", "Golden Retriever");

  // Accessing properties and methods from both parent and child classes
  dog.sound();  // Calls overridden method in Dog class
  dog.bark();   // Calls method in Dog class
}
