// Objectives
// 1. Inheritance with Default Constructor
// 2. Inheritance with Named Constructor

void main() {
  var dog1 =
      Dog(); //child constructor ke call dile parent class constructor ke o call kore dei
  print('');
  var dog2 = Dog();
}

class Animal {
  late String color; // property  or instance variable
  Animal() {
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
  Dog() : super() {
    // calling super class consturctor using super keyword. even if you don't use super() keyword it will call the super constructor
    print('Dog class constructor');
  }
}
