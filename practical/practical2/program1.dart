import 'dart:io';

void main() {
  String str = "C2W";
  //int row? = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      stdout.write(str);
      stdout.write(" ");
    }
    print("");
  }
}
