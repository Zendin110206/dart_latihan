void main() {
  // no 17
  List<int> angkaJawaban = kalimat(
    'saya suka makan nasi dan saya juga suka minum susu',
  );
  print(angkaJawaban);
  print('Jumlah Kata: ${angkaJawaban[0]}');
  print('Jumlah Karakter: ${angkaJawaban[1]}');
  print('Jumlah Kata unik: ${angkaJawaban[2]}');
}

List<int> kalimat(String kalimatUser) {
  List<String> kalimatList = kalimatUser.split(RegExp(r'\s+'));
  print(kalimatList);

  Set<String> kalimatSet = kalimatList.toSet();
  print(kalimatSet);

  List<int> angka = [kalimatList.length, kalimatUser.length, kalimatSet.length];
  return angka;
}


// soalnya bener bener terlalu sulit karena kita sama sekali belum pernah belajar mengenai RegExp(r'\s+')