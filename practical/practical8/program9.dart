/*  row = 4
    1
    3 5 
    5 8 11
    7 11 15 19
     */

import 'dart:io';

void main() {
  int row = (int.parse(stdin.readLineSync()!));
  for (int i = 1; i <= row; i++) {
    int x = i * 2 - 1;
    for (int j = 1; j <= i; j++) {
      stdout.write("$x ");
      x = x + i;
    }
    print(" ");
  }
}
