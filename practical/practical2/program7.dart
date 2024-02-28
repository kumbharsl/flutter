import 'dart:io';

void main() {
  String ch = "D";
  for (int i = 1; i <= 4; i++) {
    for (int j = 1; j <= 4; j++) {
      stdout.write("$ch");
      stdout.write("  ");
    }
    print(" ");
  }
}
