import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter size of password: ");
  String? value = stdin.readLineSync();

  if(value != null && value.isNotEmpty) {
    try {
      int size = int.parse(value);
      stdout.write("Password: ");
      print(generatePassword(size));
    }
        catch(e) {
          print("Enter a valid size! ");
        }
  }
  else {
    print("No size provided! ");
  }
}

String generatePassword (int size) {
  final String upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  final String lower = "abcdefghijklmopqrstuvwxyz";
  final String digits = '1234567890';
  final String chars = r'!@#$%^&*()~_+-=<>?:"{}|[]\;,';

  final String all = upper + lower + digits + chars;
  final Random rnd = Random.secure();

  return List.generate(
      size,
      (_)=>all[rnd.nextInt(all.length)]
  ).join();
}
