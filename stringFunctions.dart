import 'dart:io';

void main() {
  print(" 1. Length \n 2. Unique Characters\n 3. Frequency of characters");
  print(" 4. All");
  stdout.write("Enter Choice: ");
  String? choice = stdin.readLineSync();
  Set<String> names ={};
  stdout.write("Enter text: ");
  String? str = stdin.readLineSync();

  if ((choice != null && choice.isNotEmpty) &&
      (str != null && str.isNotEmpty)) {
    switch (choice) {
      case '1':
        length(str);
        break;
      case '2':
        names=unique(str);
        break;
      case '3':
        frequency(names, str);
        break;
      case '4':
        length(str);
        print("-----------------");
        names=unique(str);
        print("-----------------");
        frequency(names, str);
        print("-----------------");
      default:
        print("Wrong choice! ");
    }
  }
}


// length of string
void length(String str) {
  int i=0;
  str = str + '!';
  while (str[i]!='!') {
    // print(str[i]);
    i+=1;
  }
  print("Length of string is $i ");
}

Set<String> unique(String str) {
  Set<String> names ={};
  str+='!';
  int i=0;
  while(str[i]!='!') {
    names.add(str[i]);
    i++;
  }
  print("The unique character in the provided string are $names");
  return names;
}

void frequency(Set<String> names, String str) {
  Map<String, int> freqMap={};
    names.forEach((name) {
      freqMap[name]=0;
    });
  str+='!';
  int i=0;
  while(str[i]!='!') {
    int? j=freqMap[str[i]];
    freqMap[str[i]]=(j!+1);
    i++;
  }
  print("New map= $freqMap");
}