import 'dart:io';

void main() {
  const pi = 3.1416;
  dynamic radius = stdin.readLineSync();
  radius = double.parse(radius);
  print('This area is : ${pi * radius * radius}');
}
