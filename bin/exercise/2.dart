// https://hackmd.io/@kuzmapetrovich/S1x90jWGP

import 'dart:io';

void main() {
  int number = 0;
  while (true) {
    stdout.write("Enter a number: ");
    String? inputNumber = stdin.readLineSync();
    if (inputNumber == null || inputNumber.isEmpty) {
      print("You are not yet filling a Number.");
    } else {
      inputNumber = inputNumber.trim();
    }

    int? cekNum = int.tryParse(inputNumber ?? "");

    if (cekNum != null) {
      number = cekNum;
      break;
    }
    print("please, input an integer number");
  }

  print("Your number is : $number and \nis it odd? -> ${number.isOdd}");
}
