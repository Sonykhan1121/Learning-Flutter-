import 'dart:io';

void main() {
  var numbers = (stdin.readLineSync())!.split(' ');
  print(int.parse(numbers[0]).gcd(int.parse(numbers[1])));
}
