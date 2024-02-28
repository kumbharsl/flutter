import 'dart:io';
import 'program2.dart';

void main() {
  print("Enter the range of start");
  int start = (int.parse(stdin.readLineSync()!));

  print("Enter the range of end");
  int end = (int.parse(stdin.readLineSync()!));

  int ans = sumofpalindromeofcount(start, end);

  print(ans);
}
