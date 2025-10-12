void main() async {
  // no 160
  try {
    final data = prosesData('');
    final hasil = await data;
    print(hasil);
  } catch (e) {
    print('Error ditemukan: $e');
  } finally {
    print(
      'Ini selalu dieksekusi',
    ); // kamu enggak ngasih contoh kodenya, padahal hal ini baru loh, kenapa??
    print('Proses selesai, sumber daya dibersihkan.');
  }
}

Future<String> prosesData(String input) {
  return Future.delayed(Duration(seconds: 2), () {
    if (input == 'wah') {
      return 'Berhasil';
    } else {
      throw Exception('Gagal');
    }
  });
}


