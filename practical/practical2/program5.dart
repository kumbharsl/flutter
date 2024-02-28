import 'dart:io';

void main() {
  int num = 12;
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      stdout.write("$num");
      stdout.write("  ");
    }
    print(" ");
    num--;
  }
}
