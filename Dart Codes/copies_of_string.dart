import 'dart:io';

void main() {
  var value = stdin.readLineSync();
  dynamic num = stdin.readLineSync();
  num = int.parse(num);

  print("${value!*num} k");
}
