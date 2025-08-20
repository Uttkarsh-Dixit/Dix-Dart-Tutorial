import 'dart:io';

void main() {
  stdout.write("Enter the list of numbers, separated by spaces: ");
  String? values = stdin.readLineSync();
  stdout.write("Enter no. to be checked by : ");
  String? dig = stdin.readLineSync();
  if(dig != null && dig.isNotEmpty) {

    if(values != null && values.isNotEmpty ) {
      try {
        int digit = int.parse(dig);
        List<int> numbers = values.split(" ").map(int.parse).toList();
        print( checkList(numbers, digit));

      }
      catch(e){
        print("Invalid input");
      }
    }
    else {
      print("No List entered! ");
    }
  }
  else {
    print("No digit entered! ");
  }

}

List<int> checkList(List<int> numbers, int dig) {
  List<int> newList = [];
  numbers.forEach((number) {
    if(number<dig) {newList.add(number);}
  }
  );
  return newList;
}