import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Parent class
class Mammal implements Animal {
  void makeSound() {
    print('Mammal makes a sound');
  }
}

// Child class inheriting from Mammal
class Dog extends Mammal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Class that implements an interface
class Cat implements Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

// Class to demonstrate data initialization from a file
class Person {
  late String name;
  late int age;

  Person(this.name, this.age);

  factory Person.fromFile(File file) {
    List<String> data = file.readAsLinesSync();
    return Person(data[0], int.parse(data[1]));
  }
}

// Method demonstrating loop usage
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Demonstrate class inheritance
  Mammal mammal = Mammal();
  mammal.makeSound(); // Output: Mammal makes a sound

  Dog dog = Dog();
  dog.makeSound(); // Output: Dog barks

  // Demonstrate interface implementation
  Animal cat = Cat();
  cat.makeSound(); // Output: Cat meows

  // Demonstrate data initialization from a file
  File personFile = File('person.txt');
  Person person = Person.fromFile(personFile);
  print('Name: ${person.name}, Age: ${person.age}');

  // Demonstrate loop usage
  printNumbers(5);
}
