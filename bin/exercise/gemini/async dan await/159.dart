Future<int> getUserId(String nama) async {
  await Future.delayed(Duration(seconds: 1));
  if (nama == 'Budi') {
    return 123;
  } else {
    throw Exception('User tidak ditemukan');
  }
}

Future<String> getUserPosts(int userId) async {
  await Future.delayed(Duration(microseconds: 1));
  if (userId == 123) {
    return 'Postingan Budi';
  } else {
    throw Exception('Postingan tidak ditemukan');
  }
}

void main() async {
  try {
    final hasil = getUserId(
      'Budi',
    ); // tinggal ganti ganti aja kalau mau lihat salahnya
    int data = await hasil;
    print(data);

    final hasil2 = getUserPosts(data);
    String data2 = await hasil2;

    print(data2);
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}
