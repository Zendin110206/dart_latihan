void main() {
  // no 19
  // Panggil fungsi di dalam string dengan ${...}

  print(
    'Apakah \'dengar\' dan \'gerand\' memiliki set karakter yang sama? ${cekAnagram('dengar', 'gerand')}',
  );

  print(
    "Apakah 'halo' dan 'dunia' memiliki set karakter yang sama? ${cekAnagram('halo', 'dunia')}",
  );
  print(
    "Apakah 'apple' dan 'apel' memiliki set karakter yang sama? ${cekAnagram('apel', 'apple')}",
  );
}

// Fungsi ini sengaja dibuat salah (selalu true) untuk fokus pada error syntax
bool cekAnagram(String kata1, String kata2) {
  if (kata1.length != kata2.length) {
    return false;
  }

  Set<String> katabaru1 = kata1.split('').toSet();
  Set<String> katabaru2 = kata2.split('').toSet();

  if (katabaru1.difference(katabaru2).isEmpty && katabaru2.difference(katabaru1).isEmpty) {
    return true;
  } else {
    return false; // Untuk contoh ini, kita abaikan logikanya
  }
}
