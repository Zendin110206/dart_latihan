void main() {
  // no 10
  var data = [0.0, 25.0, 37.5, 100.0];
  print('Suhu Celcius : $data');
  var dataFahrenheit = data.map((e) => (e * 9 / 5) + 32);

  print('Suhu Fahrenheit : $dataFahrenheit');
}
