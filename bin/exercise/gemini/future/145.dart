void main() {
  // no 145
  Future<int>.delayed(Duration(seconds: 1), () {
        return 10;
      })
      .then((value) {
        int result = value * 2;
        print("Hasil pertama: $result");
        return result; // Mengembalikan hasil baru (20) untuk .then() berikutnya.
      }) // 3. .then() kedua menerima hasil dari .then() pertama (20).
      .then((value) {
        print("Hasil kedua: $value"); // Mencetak hasil kedua.
      });
}


// syntax nya makin sulit dan hampir gak kebaca, maksudnya kek bisa titik setelah ini itu, makin sulit
// tapi sih untuk ke secara teori dan konsep sepertinya nangkep sih, aman aman aja