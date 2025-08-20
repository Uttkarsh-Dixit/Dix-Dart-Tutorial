import 'dart:io';

void main() {
  stdout.write("Which shape's area do you want to calculate (enter numebr): \n");
  print(" 1-Rectangle \n 2-Square \n 3-Circle \n 4-Triangle");
  String? value = stdin.readLineSync();

  if (value != null && value.isNotEmpty) {
    try{
      int choice = int.parse(value);
      switch (choice) {
        case 1:
          areaRect();
          break;
        case 2:
          areaSquare();
          break;
        case 3:
          areaCircle();
          break;
        case 4:
          areaTriangle();
          break;
        default:
          print("invalid choice! ");

      }
    }
    catch(e){
      print("Invalid input! ");
    }
  }
  else {
    print("Enter a number from the given data.");
  }
}

void areaRect() {
  stdout.write("Enter length : ");
  String? val1= stdin.readLineSync();

  stdout.write("Enter breadth : ");
  String? val2= stdin.readLineSync();

  if ( (val1 != null && val1.isNotEmpty)
      &&
      (val2 != null && val2.isNotEmpty) ) {
    try{
      double length = double.parse(val1);
      double breadth = double.parse(val2);
      double area = length * breadth;
      print("The area of rectangle is $area");
    }
        catch(e){
      print("Invalid input! ");
        }
  }
  else {
    print("Enter proper dimensions! ");
  }
}

void areaSquare() {
  stdout.write("Enter length of side : ");
  String? val1= stdin.readLineSync();


  if (val1 != null && val1.isNotEmpty){
    try{
      double length = double.parse(val1);
      double area = length * length;
      print("The area of square is $area");
    }
    catch(e){
      print("Invalid input! ");
    }
  }
  else {
    print("Enter proper dimensions! ");
  }
}

void areaCircle() {
  stdout.write("Enter radius : ");
  String? val1= stdin.readLineSync();


  if (val1 != null && val1.isNotEmpty){
    try{
      double radius = double.parse(val1);
      double area = 3.14 * radius * radius;
      print("The area of circle is $area");
    }
    catch(e){
      print("Invalid input! ");
    }
  }
  else {
    print("Enter proper dimensions! ");
  }
}


void areaTriangle() {
  stdout.write("Enter base size : ");
  String? val1= stdin.readLineSync();

  stdout.write("Enter height : ");
  String? val2= stdin.readLineSync();

  if ( (val1 != null && val1.isNotEmpty)
      &&
      (val2 != null && val2.isNotEmpty) ) {
    try{
      double base = double.parse(val1);
      double height = double.parse(val2);
      double area = 0.5 * base * height;
      print("The area of rectangle is $area");
    }
    catch(e){
      print("Invalid input! ");
    }
  }
  else {
    print("Enter proper dimensions! ");
  }
}
