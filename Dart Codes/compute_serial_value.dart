import 'dart:io';

void main() {
  var sum = 0;
  dynamic n = stdin.readLineSync();
  var list = [n, n * 2, n * 3];
  print(list);
  for (var x in list) {
    sum += int.parse(n);
  }
  print(sum);
}
