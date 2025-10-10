void main() {
  // no 99
  var configDefault = {'theme': 'light', 'language': 'id', 'timeout': 30};
  var configUser = {'theme': 'dark', 'fontSize': 14};

  var configFinal = {...configDefault, ...configUser};
  print("Konfigurasi Akhir: $configFinal");
}
