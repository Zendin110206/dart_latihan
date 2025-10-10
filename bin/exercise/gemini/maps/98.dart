void main() {
  // no 98
  List<Map<String, dynamic>> daftarProduk = [
    {'nama': 'Laptop', 'harga': 8500000},
    {'nama': 'Mouse', 'harga': 250000},
    {'nama': 'Keyboard', 'harga': 750000},
    {'nama': 'Monitor', 'harga': 2500000},
    {'nama': 'Mousepad', 'harga': 50000},
  ]; // secara default apabila pake var maka ini tipenya bukan dynamic melainkan object, yang dimana itu kurang baik lah, dan kodingan ini element['harga'] > 500000 tidak bisa dijalankan kalau object ( kenapa ya???)
  var mapBaru = [];

  for (var element in daftarProduk) {
    if (element['harga'] > 500000) {
      // mapBaru.addEntries(element.entries);
      mapBaru.add(element);
    }
  }

  print('Produk dengan harga di atas 500000:');
  for (var element2 in mapBaru) {
    print('- ${element2['nama']} (${element2['harga']})');
  }
}
