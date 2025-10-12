void main() async {
  // no 161
  try {
    final data = await Future.wait([
      fetchUserName('zaenal'),
      fetchLastNotification(true),
      fetchFriendCount(3),
    ]);
    print(data);
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }

  try {
    final data = await Future.wait([
      fetchUserName('zaenal'),
      fetchLastNotification(true),
      fetchFriendCount(3),
      gagalSetelahSatuDetik()
    ]); // waktu lama hanya untuk memastikan pemahaman konsep pararel ( jalan nya jadi satu bukan nunggu 1 per satu ya kan maksud dari pararel?)
    print(data);
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}

Future<String> fetchUserName(String nama) async {
  await Future.delayed(Duration(seconds: 4));
  if (nama == 'zaenal') {
    String hasil = 'hai zaenal';
    return hasil;
  } else {
    throw Exception('Gagal mengambil nama user');
  }
}

Future<String> fetchLastNotification(bool pesan) async {
  await Future.delayed(Duration(seconds: 5));
  if (pesan = true) {
    // ini asal aja yaa isinya
    return 'Last notifikasi: Hi zaenal apa kabar';
  } else {
    throw Exception('Gagal mengambil pesanNotifikasi');
  }
}

Future<String> fetchFriendCount(int nilai) async {
  await Future.delayed(Duration(seconds: 6));
  if (nilai == 3) {
    // ini asal aja yaa isinya
    return 'Kamu memiliki 3 notifikasi dari temenmu';
  } else {
    throw Exception('Gagal mengambil data');
  }
}

Future<bool> gagalSetelahSatuDetik() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('Gagal total');
}
