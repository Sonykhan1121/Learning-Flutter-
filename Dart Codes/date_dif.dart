void main() {
  var initialDate = DateTime.utc(2014, 7, 2);
  var finalDate = DateTime.utc(2024, 07, 11);

  var dif = finalDate.difference(initialDate);
  print(dif.inDays);

}
