// Exercise:
// Develop a program to calculate the shipping cost based on
// the destination zone and the weight of the package (you will be provided).
// Calculate the shipping cost according to these conditions:
//    - If the destination zone is 'XYZ', the shipping cost is $5 per kilogram.
//    - If the destination zone is 'ABC', the shipping cost is $7 per kilogram.
//    - If the destination zone is 'PQR', the shipping cost is $10 per kilogram.
//    - If the destination zone is not 'XYZ', 'ABC', or 'PQR', display an error message.

void main() {
  String destinationZone = 'PQR'; // change
  double weightInKgs = 6; // change
  double price = 0;

  if (destinationZone == 'XYZ') {
    price = weightInKgs * 5;
  } else if (destinationZone == 'ABC') {
    price = weightInKgs * 7;
  } else if (destinationZone == 'PQR') {
    price = weightInKgs * 10;
  } else {
    print('Input not valid, try again');
    return; // agar bawahnya tidak akan ke print juga, berhenti disini intinya
  }

  print('Shipping Cost: \$$price');

  price = 0;
  switch (destinationZone) {
    case 'XYZ':
      price = weightInKgs * 5;

    case 'ABC':
      price = weightInKgs * 7;

    case 'PQR':
      price = weightInKgs * 10;
    default:
      print('Input not valid, try again');
  }

  print('Shipping Cost: \$$price');
}
