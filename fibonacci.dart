import 'dart:io';

void main() {
  stdout.write("Enter the size of series: ");
  String? value = stdin.readLineSync();

  if(value != null && value.isNotEmpty) {
    try{
      int size = int.parse(value);
      fibonacci(size);
    }
        catch(e){
        print("Invalid input");
        }
  }
  else {
    print("Enter some input! ");
  }
}

void fibonacci(int size) {
  int first = 0;
  int second = 1;
  int p=0;
  stdout.write("$first $second");
  for(int i=0; i<size-2; i++) {
    p=first+second;
    first=second;
    second=p;
    stdout.write(" $p");
  }

}

// 0 1 1 2 3 5
// f s p