// import 'dart:io';


/*
extension type rupee (int paise) {
  double get rupees => paise/100.00 ;
  // rupee operator % (rupee other) => rupee((paise * 0.9).toInt());
  rupee operator +(rupee other) => rupee(paise + other.paise);
}
void main() {
 final price=rupee(5000);
 final tax= rupee(500);
 // final discount= rupee(10);

 final total=price+tax;
 print("Total before discount: ${total.rupees} ");
 // print("Total after discount: $total.rupees");
}
*/


/*  ENUMs

enum Vehicle {
  car(tires: 4), bus(tires: 6), bike(tires: 2);
  const Vehicle({required this.tires});
  final int tires;
}

enum genders {
  girl(gender: 'F'), boy(gender: 'M'), other(gender: 'other');
  const genders( {required this.gender});
  final String gender;
}
 void main () {
  genders shyam= genders.boy;
  genders gita= genders.girl;
  genders mix= genders.other;

  print(shyam.gender);
  print(gita.gender);
  print(mix.gender);
 }
*/

/* Inheritance with methods in inherited class

class animal {
  String? name;
  int? legs;
  bool tail=true;

  animal(this.name) ;

  void display () {
    print("$name has $legs legs.");
    if(tail) {
      print("It also has a tail. ");
    }
    else {
      print("It does not have a tail. ");
    }
  }
}
 class cat extends animal {
  String? sound;
  cat(super.name, this.sound);
  void display () {
    super.display();
    print("It makes a $sound sound ");
  }
 }

 void main () {
  cat tom = cat("Tom", "meow");
  tom.legs=4;
  tom.tail=true;
  tom.display();
 }
*/

/* class with inbuilt method

class house {
  double? price;
  int? id;

  house(this.price, this.id);

  void display () {
    print("The price of house with id $id is $price ");
  }
}

void main () {
  house one = house(1200000, 1839);
  house two = house(2813000, 8201);

  one.display();
  two.display();
}
*/

/* Basic Class example


class Laptop {
  String name;
  String ram;
  int? id;
  Laptop(this.name, this.ram, [this.id]);
}

void main() {
  Laptop dell= Laptop("Dell", "12gb", 01);
  Laptop hp= Laptop("HP", "12gb");
  Laptop asus= Laptop("Asus", "12gb");
  hp.id=02;
  asus.id=03;

  print("Name: ${dell.name} , id= ${dell.id} RAM = ${dell.ram}");
  print("Name: ${hp.name} , id= ${hp.id} RAM = ${hp.ram}");
  print("Name: ${asus.name} , id= ${asus.id} RAM = ${asus.ram}");

}
*/