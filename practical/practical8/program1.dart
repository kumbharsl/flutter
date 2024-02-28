/*  row = 4
    #
    # # 
    # # #
    # # # #
     */

import 'dart:io';

void main() {
  int row = (int.parse(stdin.readLineSync()!));
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("# ");
    }
    print(" ");
  }
}
