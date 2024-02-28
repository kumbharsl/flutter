//import 'dart:io';

void main() {
  int start = 10;
  int end = 1;
  int product = 1;
  while (start >= end) {
    if (start % 2 == 1) {
      product = product * start;
    }
    start--;
  }
  print(product);
}
