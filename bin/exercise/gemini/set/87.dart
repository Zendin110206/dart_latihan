void main() {
  // no 87
  User user = User(nama: 'Budi', peran: {'viewer'});
  print('Peran awal ${user.nama}: ${user.peran}');
  user.tambahPeran('editor');
  print('Peran setelah ditambah \'editor\': ${user.peran}');
  user.tambahPeran('viewer');
  print('Peran setelah ditambah \'viewer\' lagi: ${user.peran}');
  print(
    'Apakah ${user.nama} seorang editor? ${user.peran.contains('editor')}',
  ); // mungkin di soal ingin menggunakan fungsi punya peran maka ada di line bawah
  print('Apakah ${user.nama} seorang admin? ${user.punyaPeran('admin')}');
  user.hapusPeran('viewer');
  print('Peran akhir ${user.nama}: ${user.peran}');
}

class User {
  String nama;
  Set<String> peran;

  User({required this.nama, required this.peran});

  void tambahPeran(String peranBaru) {
    peran.add(peranBaru);
  }

  void hapusPeran(String peranDicari) {
    if (peran.contains(peranDicari)) {
      peran.remove(peranDicari);
    }
  }

  bool punyaPeran(String peranDicari) {
    if (peran.contains(peranDicari)) {
      return true;
    } else {
      return false;
    }
  }
}


// mau nanya itu kan di kelas ada set kosong, kenapa kok gak perlu inisialisasi kek gini : 
// // Membuat Set kosong
// var namaHewan = <String>{}; // Cara 1: Eksplisit
// Set<int> nomorUndian = {}; // Cara 2: Deklarasi dengan tipe