import 'dart:io';

void main() {
  try {
    double a = 1 / 7;
    print("Div : $a");
  } on IOException catch (e) {
    print("Error is : $e");
  }
}
