void main() {
  var year = 2020;
  if (year >= 2001) {
    print("21st century");
  } else {
    print('19 century');
  }

  var greetings = ["hi", "hello", "hey"];

  for (var i in greetings) {
    print(i);
  }
  print("Months : ");
  for (int i = 1; i <= 12; i++) {
    print(i);
  }
  while (year < 2025) {
    print("year : $year");
    year++;
  }
}
