import 'dart:io';
import 'dart:math';

void main() {
    stdout.write("Enter number: ");
    String? str= stdin.readLineSync();

    if(str != null && str.isNotEmpty) {
      try {
        int val = int.parse(str);
        isPrime(val);
      }
      catch(e){
        print("Invalid Input! ");
      }
    }
    else {
      print("No number entered! ");
    }
}

void isPrime(int val) {
  if(check(val)) {
    print("The given number is prime. ");
  }
  else {
    print("The given number is composite. ");
  }
}

bool check(int val) {
  if (val <=1 ) return false;
  if (val <=3 ) return true;
  if (val %2 ==0 || val %3 ==0) return false;

  int rt= (sqrt(val)).toInt();
  for (int i=5; i<=rt; i+=6) {
    if(val % i==0 || val % (i+2)==0) {
      return false;
    }
  }
  return true;
}