// Objectives
// 1. Inheritance with Default Constructor and Parameterised Constructor
// 2. Inheritance with Named Constructor

void main() {
  var dog1 = Dog('Labrador',
      'Black'); //child constructor ke call dile parent class constructor ke o call kore dei
  print('');
  var dog2 = Dog('Pug', 'Brown');
}

class Animal {
  late String color; // property  or instance variable
  Animal(String color) {
    this.color;
    // defult constructor
    print('Animal class constructor');
  }
}

class Dog extends Animal {
  // child or sub class of Dog inherits from parent or super class  Animal
  late String breed;
/*
  Dog() {
    //  default constructor
    print('Dog class constructor');
  }
  */
  Dog(String breed, String color) : super(color) {
    this.breed; // instantiate instance variable
    // calling super class consturctor using super keyword. even if you don't use super() keyword it will call the super constructor
    print('Dog class constructor');
  }
}
