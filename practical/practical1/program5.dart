import 'dart:io';

void main() {
  int start = 40;
  int end = 50;
  while (start <= end) {
    if (start % 2 == 0) {
      stdout.write(start * start);
      stdout.write(" ");
    }
    start++;
  }
}
