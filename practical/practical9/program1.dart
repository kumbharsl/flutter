/*  row = 4
    4 8 12 16
    4 7 10
    4 6
    4
    */

import 'dart:io';

void main() {
  int row = (int.parse(stdin.readLineSync()!));
  int x = 4;
  for (int i = 1; i <= row; i++) {
    for (int j = row; j >= i; j--) {
      stdout.write("$x ");
      x = x;
    }
    print(" ");
  }
}
