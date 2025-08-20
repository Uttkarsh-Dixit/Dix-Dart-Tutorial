import 'dart:io';

void main() {
  stdout.write("Enter the number: ");
  String? value= stdin.readLineSync();

  if(value != null && value.isNotEmpty) {
    try {
      int number = int.parse(value);
      List<int> divisors = findDivisor(number);
      print("The divisors are: $divisors ");
    }
        catch(e) {
        print("Invalid input! ");
        }
  }
  else {
    print("No number entered! ");
  }
}

List<int> findDivisor (int number) {
  List<int> divisors = [];
  for(int i=1; i<=number; i++) {
    if(number%i == 0) {
      divisors.add(i);
    }
  }
  return divisors;
}