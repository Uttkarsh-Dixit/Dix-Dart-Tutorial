import 'dart:io';

void main() {
  List<List<int>>? matrix;

  while (true) {
    print("\n===== Matrix Menu =====");
    print("1. Create Matrix");
    print("2. Add/Update a number in Matrix");
    print("3. Delete a value from Matrix");
    print("4. Display Matrix");
    print("5. Exit");
    stdout.write("Enter your choice: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter number of rows: ");
        int rows = int.parse(stdin.readLineSync()!);

        stdout.write("Enter number of columns: ");
        int cols = int.parse(stdin.readLineSync()!);

        matrix = List.generate(rows, (_) => List.filled(cols, 0));
        print("Matrix created with size $rows x $cols (all values = 0).");
        break;

      case '2':
        if (matrix == null) {
          print("Matrix not created yet. Create it first.");
          break;
        }
        stdout.write("Enter row index (0 to ${matrix.length - 1}): ");
        int r = int.parse(stdin.readLineSync()!);

        stdout.write("Enter column index (0 to ${matrix[0].length - 1}): ");
        int c = int.parse(stdin.readLineSync()!);

        if (r < 0 || r >= matrix.length || c < 0 || c >= matrix[0].length) {
          print("Invalid index!");
        } else {
          stdout.write("Enter value to insert: ");
          int val = int.parse(stdin.readLineSync()!);
          matrix[r][c] = val;
          print("Value added successfully.");
        }
        break;

      case '3':
        if (matrix == null) {
          print("Matrix not created yet. Create it first.");
          break;
        }
        stdout.write("Enter row index to delete from: ");
        int r = int.parse(stdin.readLineSync()!);

        stdout.write("Enter column index to delete from: ");
        int c = int.parse(stdin.readLineSync()!);

        if (r < 0 || r >= matrix.length || c < 0 || c >= matrix[0].length) {
          print("Invalid index!");
        } else {
          matrix[r][c] = 0;
          print("Value deleted (set to 0).");
        }
        break;

      case '4':
        if (matrix == null) {
          print("Matrix not created yet.");
        } else {
          print("Matrix:");
          for (var row in matrix) {
            print(row);
          }
        }
        break;

      case '5':
        print("Exiting program....!");
        return;

      default:
        print("Invalid choice. Try again.");
    }
  }
}
