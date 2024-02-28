import 'dart:io';

void main() {
  int num = 1;
  //int row? = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      stdout.write("$num");
      stdout.write("  ");
      num += 2;
    }
    print("");
  }
}
