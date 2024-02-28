/*
        *
      * *
    * * *
  * * * *
  */
import 'dart:io';

void main() {
  int row = (int.parse(stdin.readLineSync()!));
  for (int i = 1; i <= row; i++) {
    for (int j = row; j >= i; j--) {
      stdout.write("  ");
      for (int k = i; k <= i; k++) {
        stdout.write("*  ");
      }
      print(" ");
    }
  }
}
