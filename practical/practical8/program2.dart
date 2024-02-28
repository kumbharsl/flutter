/*  row = 4
    1
    1 2 
    1 2 3
    1 2 3 4
     */

import 'dart:io';

void main() {
  int row = (int.parse(stdin.readLineSync()!));
  for (int i = 1; i <= row; i++) {
    int x = 1;
    for (int j = 1; j <= i; j++) {
      stdout.write("$x ");
      x++;
    }
    print(" ");
  }
}
