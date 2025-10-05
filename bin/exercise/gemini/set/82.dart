void main() {
  // no 82
  List<String> alamatEmail = [
    'user1@mail.com',
    'user2@mail.com',
    'user1@mail.com',
    'user3@mail.com',
  ];

  // alamatEmail.toSet(); iterable ya dia? jadi perlu simpan di variabel biar gak hilang

  Set<String> alamatEmailTanpaDuplikat = alamatEmail.toSet();
  print('Email unik: $alamatEmailTanpaDuplikat');
}
