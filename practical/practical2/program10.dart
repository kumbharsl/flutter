import 'dart:io';

void main() {
  for (int i = 1; i <= 3; i++) {
    int num = 0;
    for (int j = 1; j <= 3; j++) {
      stdout.write(i + num);
      stdout.write("  ");
      num += 2;
    }
    print(" ");
  }
}
