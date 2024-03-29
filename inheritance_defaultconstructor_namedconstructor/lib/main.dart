// Objectives
// 1. Inheritance with Default Constructor and Parameterised Constructor
// 2. Inheritance with Named Constructor

/* 
1. // Inheritance with Default Constructor and Parameterised Constructor

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
  Dog(String breed, String color) : super(color) { // we parametrised our default construtor
    this.breed; // instantiate instance variable
    // calling super class consturctor using super keyword. even if you don't use super() keyword it will call the super constructor
    print('Dog class constructor');
  }
  Dog.myNamedConstructor(){

  }

}
*/

//2. Inheritance with Named Constructor
void main() {
  var dog1 = Dog('Labrador',
      'Black'); //child constructor ke call dile parent class constructor ke o call kore dei
  print('');
  var dog2 = Dog('Pug', 'Brown');
  print(''); // making newline

  var dog3 = Dog.myNamedConstructor('German Shepherd',
      'Black-Brown'); // we are passing value in named constructor
  print('');
  var dog4 = Dog.myNamedConstructor2('golir dog', 'yellow');
}

class Animal {
  late String color; // property  or instance variable
  Animal(String color) {
    this.color = color;
    // defult constructor
    print('Animal class constructor');
  }
  Animal.myAnimalNamedConstructor(String color) {
    this.color = color;
    print('Animal class named constructor');
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
    // we parametrised our default construtor
    this.breed = breed; // instantiate instance variable
    // calling super class consturctor using super keyword. even if you don't use super() keyword it will call the super constructor
    print('Dog class constructor');
  }
  Dog.myNamedConstructor(String breed, String color) : super(color) {
    //we can pass value or parameter in super class constructor // named constructor is contianing some perameter
    this.breed =
        breed; // in this way we can instantiate our breed// this.breed is our instance variable
    print('Dog class named constructor');
  }
  Dog.myNamedConstructor2(String breed, String color)
      : super.myAnimalNamedConstructor(color) {
    // value will be initialize by color parameter
    // calling superclasss named constructor which will execute super class of named consturctor
    this.breed = breed;
    print('Dog class named constructor 2');
  }
}
