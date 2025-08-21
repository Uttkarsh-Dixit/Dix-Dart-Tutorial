import 'dart:io';

void main() {
  String ch='y';
  List<String> tasks=[];

  do {
    print("-------------TO-DO LIST-------------");
    print(" 1. Add a task.\n 2. Delete a task.");
    print(" 3. Mark a task complete");
    print(" 4. Display Remaining tasks.");
    stdout.write("Enter choice: ");
    String? choice = stdin.readLineSync();
  if(choice != null &&  choice.isNotEmpty) {

      switch (choice) {
        case '1':
          tasks = add(tasks);
          break;
        case '2':
          tasks = delete(tasks);
          break;
        case '3':
          tasks = complete(tasks);
          break;
        case '4':
          display(tasks);
          ch='m';
          break;
        default:
          print("Wrong choice! ");
      }
    }
  }while(ch=='y');
}

List<String> add(List<String> tasks) {
  List<String> chores;
  chores=tasks;
  stdout.write("Enter task: ");
  String? task = stdin.readLineSync();
  if(task != null &&  task.isNotEmpty) {
    chores.add(task);
  }
  print("Task added!");
  return chores;
}

List<String> delete(List<String> tasks) {
  List<String> chores;
  chores=tasks;
  stdout.write("Enter task to be deleted: ");
  String? task = stdin.readLineSync();
  if(task != null &&  task.isNotEmpty) {
    chores.remove(task);
  }
  print("Task deleted!");
  return chores;
}
List<String> complete(List<String> tasks) {
  List<String> chores;
  chores=tasks;
  stdout.write("Enter task that is completed: ");
  String? task = stdin.readLineSync();
  if(task != null &&  task.isNotEmpty) {
    chores.remove(task);
  }
  print("Task completed!");
  return chores;
}
void display(List<String> tasks) {
  print("The remaining tasks are as follows: ");
  print(tasks);
}