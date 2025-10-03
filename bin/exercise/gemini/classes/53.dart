void main() {
  final suhu = Suhu(celcius: 25.0);
  print('Celcius: ${suhu.celcius}');
  print('Fahrenheit: ${suhu.fahrenheit}');
  print('Kelvin: ${suhu.kelvin}');
}

class Suhu {
  final double _celcius;
  Suhu({required double celcius}) : _celcius = celcius;
  double get celcius => _celcius;

  double get fahrenheit {
    return (_celcius * 9 / 5) + 32;
  }

  double get kelvin {
    return _celcius + 273.15;
  }
}

