void main() {
    // no 26
  print(faktorial(5));
}

int faktorial(int n) {
  if (n == 0) {
    return 1;
  }
  return n* faktorial(n - 1);
}
