void main() {
  // no 29
  print('Apakah \'katak\' palindrom? ${isPalindrom('katak')} ');
  print('Apakah \'dart\' palindrom? ${isPalindrom('dart')} ');
}

bool isPalindrom(String kata) {
  for (var i = 0; i < kata.length; i++) {
    if (kata[i] != kata[(kata.length - 1) - i]) {
      // tidak berlaku kalau ada spasi, dijoin kan atau dihilangkan spasinya dulu mau gak mau
      return false;
    }
  }

  return true;
}
