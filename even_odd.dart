import 'dart:io';

void main() {
  stdout.write("Enter a value: ");
  String? value= stdin.readLineSync();

  if(value != null && value.isNotEmpty) {
      try{
        int number= int.parse(value);
        if(number%2==0) {
          print("The number is even! ");
        }
        else {
          print("The number is odd! ");
        }
      }
          catch(e){
          print("Invalid Input! ");
          }
    }
  else {
   print("No number entered! ");
  }
}