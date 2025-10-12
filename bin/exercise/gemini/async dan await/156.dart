void main() async {
  // no 156

  try {
    final data = unduhFile();
    final hasil = await data;
    print(hasil);
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}

Future<String> unduhFile() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception('Koneksi terputus.');
  });
} // kenapa disini gak pake async atau await? 

// owh ya sekalian nanya, untuk masalah await dan async ditaruh di fungsi sebenernya enggak ngaruh apa-apa kan? selain cuman beda syntax aja, atau lebih enak dibaca aja ( mungkin tergantung preferensi) kan? yang pengaruh di akhir adalah antar manggil pake .then atau await ya?


