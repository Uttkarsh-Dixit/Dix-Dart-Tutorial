import 'dart:io';

void main() {
  stdout.write("Enter the no. of lines: ");
  String? value= stdin.readLineSync();

  if(value != null && value.isNotEmpty) {
    try{
      int size = int.parse(value);
      pattern(size);
    }
        catch(e) {
        print("Invalid input! ");
        }
  }
  else {
    print("Enter some value! ");
  }
}

void pattern (int size) {
  for(int i=size; i>0; i--) {
    for (int j=0; j< i; j++) {
      stdout.write("x");
    }
    print("");
  }
  print("--------------");
  for(int i=0; i<size; i++) {
    for (int j=0; j<=i; j++) {
      stdout.write("x");
    }
    print("");
  }
  print("--------------");
}