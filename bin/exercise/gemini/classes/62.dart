void main() {
  // no 62
  // var config1 = AppConfig(); // Benar, ini akan error.

  // 1. Akses satu-satunya instance yang ada
  final config = AppConfig.instance;

  // 2. Baca propertinya
  print('Theme awal: ${config.theme}');
  print('Bahasa awal: ${config.language}');

  print('Mengubah theme...');
  // 3. Ubah properti pada instance tersebut
  config.theme = "light";

  // 4. Baca lagi propertinya untuk membuktikan objeknya sama
  print('Theme sekarang: ${config.theme}');
  print('Bahasa tetap: ${config.language}');
}

class AppConfig {
  static final AppConfig instance = AppConfig._internal();
  AppConfig._internal();
  String theme = "dark";
  String language = "id";
}

