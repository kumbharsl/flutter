import 'dart:io';

void main() {
  int start = 20;
  int end = 10;
  while (start >= end) {
    if (start % 2 == 1) {
      stdout.write(start * start);
      stdout.write(" ");
    }
    start--;
  }
}
