void main() {
  // no 123
}

abstract class DapatMencetak {
  void cetak(String dokumen);
}

class PrinterLaser implements DapatMencetak {
  @override
  void cetak(String dokumen) {
    print("Mencetak lembaran dokumen : $dokumen ");
  }
}

// mulai sekarang kemungkinan besar void main tidak akan diisi apa-apa yang penting konsep paham

// Nah mau nanya, bedanya implement sama extend jadinya apa ya? kalau yang aku tangkep ya, implements itu pokoknya bener bener nulisss semuanya bener bener ditulis ulang semuanya yang ada di abstract

// kalau extends cukup yang abstract saja misal

abstract class DapatMencetak2 {
  void cetak(String dokumen2) {
    print('mencetak : $dokumen2');
  }
}

class PrinterLaser2 extends DapatMencetak2 {
  // disini gak wajib nulis ulang lagi si fungsi cetak
}

class PrinterLaser3 implements DapatMencetak2 {
  // wajib untuk tulis ulang lagi :
  @override
  void cetak(String dokumen2) {
    print('Baru nulis ulang lagi: $dokumen2');
  }
}

// nah apakah intinya kalau sebuah abtract itu kalau bisa jangan kek contoh DapatMencetak2 karena defeat the whole purpose, dan jangan pakai extend alau misalnya implement bisa 2 sekaligus kan, kalau extend tidak bisa? 
// atau gimana? jawab concern aku semua itu ya
