// https://hackmd.io/@kuzmapetrovich/S1x90jWGP

import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String? nickname = stdin.readLineSync();
  if (nickname != null) {
    nickname = nickname.trim();
  }
  print("Your name is : $nickname");

  stdout.write("Enter your age: ");
  int number = int.parse(stdin.readLineSync()!);
  print('The entered age is $number');

  print("You will be 100 years old in ${100 - number} years");
}
