import 'dart:io';

void main() {
  int row = (int.parse(stdin.readLineSync()!));
  for (int i = 1; i <= row; i++) {
    int x = i * 2 - 1;
    for (int j = 1; j <= row; j++) {
      stdout.write("$x ");
      x += i;
      ;
    }
    print(" ");
  }
}
