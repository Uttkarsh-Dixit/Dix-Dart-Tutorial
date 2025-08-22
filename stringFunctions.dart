import 'dart:io';

void main() {
  while (true) {
    print(" 1. Length \n 2. Unique Characters\n 3. Frequency of characters");
    print(" 4. Highest frequent character\n 5. All\n 6. Exit");
    stdout.write("Enter Choice: ");
    String? choice = stdin.readLineSync();
    if (choice != null && choice.isNotEmpty) {
      if(choice=='6') { print("Code exiting..."); return; }
      Set<String> names = {};
      stdout.write("Enter text: ");
      String? str = stdin.readLineSync();
      Map<String, int> freq;


      if
      (str != null && str.isNotEmpty) {
        switch (choice) {
          case '1':
            length(str);
            print("-----------------");
            break;
          case '2':
            names = unique(str);
            print("The unique character in the provided string are $names");
            print("-----------------");
            break;
          case '3':
            names = unique(str);
            freq = frequency(names, str);
            print("Frequency of all characters are: $freq");
            print("-----------------");
            break;
          case '4':
            names = unique(str);
            freq = frequency(names, str);
            highestFreq(freq);
            print("-----------------");
            break;
          case '5':
            length(str);
            print("-----------------");
            names = unique(str);
            print("The unique character in the provided string are $names");
            print("-----------------");
            freq = frequency(names, str);
            print("Frequency of all characters are: $freq");
            print("-----------------");
            highestFreq(freq);
            print("-----------------");
            break;
          default:
            print("Wrong choice! ");
        }
      }
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

// find what all unique characters are present
Set<String> unique(String str) {
  Set<String> names ={};
  str+='!';
  int i=0;
  while(str[i]!='!') {
    names.add(str[i]);
    i++;
  }
  // print("The unique character in the provided string are $names");
  return names;
}

// Find the frequency of each product
Map<String, int> frequency(Set<String> names, String str) {
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
  // print("Frequency= $freqMap");
  return freqMap;
}


//Highest frequency of a character in a string
Map<String, int> highestFreq(Map<String, int> freq) {
  Map<String, int> m={};
  int val= (freq.values.first);
  for (var value in freq.values) {
    if(value>val){
      val=value;
    }
  }
  var keys = freq.entries
      .where((entry) => entry.value == val)
      .map((entry) => entry.key);
  print("highest freq= $keys");
  return m;
}
