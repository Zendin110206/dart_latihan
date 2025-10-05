void main() {
  // no 86
  Set<String> semuaPeserta = {"Ali", "Beni", "Caca", "Deni", "Eli"};

  final sudahMengerjakan = ["Beni", "Deni", "Ali"];
  Set<String> setSudahMengerjakan = sudahMengerjakan.toSet();

  print(setSudahMengerjakan); // memastikan aja

  print(
    'Peserta yang belum mengerjakan tugas: ${semuaPeserta.difference(setSudahMengerjakan)}',
  );
}
