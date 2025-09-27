void main() {
  // no 25
  double fahrenheit = konversiSuhu(100.0, 'Celcius');
  double celcius = konversiSuhu(68.0, 'Fahrenheit');

  print('100.0 Celcius = $fahrenheit Fahrenheit');
  print('68.0 Fahrenheit = $celcius Celcius');
}

double konversiSuhu(double suhu, String dari) {
  switch (dari.toLowerCase()) {
    case 'celcius':
      return (suhu * 9 / 5) + 32;
    case 'fahrenheit':
      return (suhu - 32) * 5 / 9;
    default:
      return 0.0;
  }
}
