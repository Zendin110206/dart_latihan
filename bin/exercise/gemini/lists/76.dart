void main() {
  // no 76
  List<int> angka = [1, 2, 3, 4, 5];
  List<int> kuadrat = angka.map((n) => n * n).toList();
  print(kuadrat);
}
