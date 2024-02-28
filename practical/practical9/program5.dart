/*  row = 4
    4 8 12 16
    4 7 10
    4 6
    4
    */

import 'dart:io';
import 'dart:core';

void main() {
  int row = (int.parse(stdin.readLineSync()!));
  int num = row * (row + 1) ~/ 2;
  for (int i = 1; i <= row; i++) {
    for (int j = row; j >= i; j--) {
      stdout.write("$num ");
      num--;
    }
    print(" ");
  }
}
