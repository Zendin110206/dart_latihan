void main() {
  // no 4
  // ignore: unused_local_variable
  Identitas identitas = Identitas(nama: 'Budi', umur: 30);
}

class Identitas {
  String nama;
  int umur;

  Identitas({required this.nama, required this.umur}) {
    print('Nama: $nama'); // langsung aja disini ( saya pengen nyoba saja, karena saya juga udah paham kok, jadi benarkan saja ya)
    print('Umur: $umur tahun');
  } // not best practises, in future, i should just make this focus only on inisialisasi aja
}

