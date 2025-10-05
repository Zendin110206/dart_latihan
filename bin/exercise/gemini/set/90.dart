void main() {
  // no 90
  print(
    "Apakah 'silent' dan 'listen' anagram? ${adalahAnagram(kata1: 'silent', kata2: 'listen')} ",
  );
  print(
    "Apakah 'dart' dan 'trap' anagram? ${adalahAnagram(kata1: 'dart', kata2: 'trap')} ",
  );
  print(
    "Apakah 'race' dan 'care' anagram? ${adalahAnagram(kata1: 'race', kata2: 'care')} ",
  );

  // edge cases :
  print(
    "Apakah 'apple' dan 'aple' anagram? ${adalahAnagram(kata1: 'apple', kata2: 'aple')}",
  );
  // masih salah

  // cara benar ) fungsi baru agar fungsi lama sebagai bahan evaluasi
   print(
    "Apakah 'apple' dan 'aple' anagram? ${adalahAnagram2(kata1: 'apple', kata2: 'aple')}",
  );
}

bool adalahAnagram({required String kata1, required String kata2}) {
  var kata1Set = kata1.split('').toSet();
  print(kata1Set);

  var kata2Set = kata2.split('').toSet();
  print(kata2Set);

  if (kata1Set.difference(kata2Set).isEmpty &&
      kata2Set.difference(kata1Set).isEmpty) {
    return true;
  } else {
    return false;
  }
}

bool adalahAnagram2({required String kata1, required String kata2}) {
  var kata1Set = kata1.split('').toSet();
  print(kata1Set);

  var kata2Set = kata2.split('').toSet();
  print(kata2Set);

  if (kata1.length != kata2.length) {
    return false;
  }

  if (kata1Set.difference(kata2Set).isEmpty &&
      kata2Set.difference(kata1Set).isEmpty) {
    return true;
  } else {
    return false;
  }
}
