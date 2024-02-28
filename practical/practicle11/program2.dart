sumofpalindromeofcount(int start, int end) {
  int count = 0;
  for (int i = start; i <= end; i++) {
    int x = i;
    int sum = 0;
    while (x != 0) {
      int rem = x % 10;
      sum = sum * 10 + rem;
      x = sum ~/ 10;
    }
    if (x == sum) {
      count++;
    }
  }
  return count;
}
