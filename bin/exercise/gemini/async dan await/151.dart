void main() async {
  // no 151
  final data = Future.delayed(Duration(seconds: 2), () => 'Selamat Datang');

  print('Mulai memuat data');
  String hasil = await data;
  print(hasil);
  print('apakah ini akan ditampilkan duluan? '); // tidak dia ditampilkan setelahnya
  // apakah ini berarti bedanya then itu adalah, kalau then semua program akan dijalankan tanpa harus menunggu si Future selesai? kalau await harus bener bener nunggu Future selesai, baru program lanjut berjalan?
  // sama ini ya pokok kalau pake await maka harus ada async
  // itu sih kalau yang dapat saya lihat dari fenomena yang terjadi, aku masih belum tau apa ada lagi?
}
