/*  row = 4
    1
    2 2 
    3 6 9
    4 8 12 16
    5 10 15 20 25
     */

import 'dart:io';

void main() {
  int row = (int.parse(stdin.readLineSync()!));
  for (int i = 1; i <= row; i++) {
    int x = i;
    for (int j = 1; j <= i; j++) {
      stdout.write("$x ");
      x += i;
    }
    print(" ");
  }
}
