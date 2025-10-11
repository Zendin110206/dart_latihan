void main() {
  // no 28
  var kataKata = ["apel", "anggur", "pisang", "pepaya", "alpukat", "pir"];

  Map<String, List<String>> kataSortKapital = {};

  for (var kata in kataKata) {
    // 1. Ambil huruf pertama dan ubah jadi huruf besar untuk dijadikan key.
    var hurufAwal = kata[0].toUpperCase();

    // 2. Gunakan putIfAbsent untuk menambahkan list baru jika key belum ada,
    //    lalu langsung tambahkan kata ke dalam list tersebut.
    kataSortKapital.putIfAbsent(hurufAwal, () => []).add(kata);
  }

  print(kataSortKapital);
}
