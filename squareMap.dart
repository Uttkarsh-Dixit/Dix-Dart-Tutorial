import 'dart:io';

void main () {
  Map<int, int> squares={};
  stdout.write("Enter size of map: ");
  int size= int.parse(stdin.readLineSync()!);

  for(int i=0; i<size; i++) {
    stdout.write("Enter values: ");
    int val= int.parse(stdin.readLineSync()!);
    int sq= val*val;
    squares[val]=sq;
  }
  for(var entry in squares.entries) {
    print("Number ${entry.key} square: ${entry.value} ");
  }

}