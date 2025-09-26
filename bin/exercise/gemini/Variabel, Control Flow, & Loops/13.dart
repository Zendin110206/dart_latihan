void main() {
  // no 13

  // deret fibonacci : 0+1+1+2+3+5+8 -> fn + fn+1 = fn+2
  int total = 0;
  int angka1 = 1;
  int angka2 = 1;

  print(total);
  print(angka1);
  print(angka2);
  for (var i = 1; i <= 7; i++) { // sampe 7 karena udah ada 3 angka pertama
    total = angka1 + angka2;
    print(total);
    angka2 = angka1;
    angka1 = total;
  }
}
