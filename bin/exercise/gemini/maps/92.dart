void main() {
  // no 92
  Map<String, dynamic> dataPengguna = {
    'Nama': 'Budi Santoso',
    'Umur': 30,
    'email': 'contoh@gmail.com',
  }; // tipe data object lebih baik daripada dynamic?? tidak

  print(dataPengguna);
  print(dataPengguna['Umur']);
  print(dataPengguna['Umur'].runtimeType);
  print(dataPengguna['Umur'] as int);

  int umurku = dataPengguna['Umur'] as int;
  print(umurku);

  // diatas hanya bereksperimen saja

  print('Nama: ${dataPengguna['Nama']}');
  print('Umur: ${dataPengguna['Umur'] as int}'); // katanya lebih best practises
}
