void main() {
  int num = 6;
  int i = num;
  int fact = 1;
  while (i != 0) {
    fact = fact * i;
    i--;
  }
  print("factorial $num is $fact");
}
