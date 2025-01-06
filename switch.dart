void main() {
  print(printDay(5));
}

String printDay(int n) {
  switch (n) {
    case 1:
      return "Saturday";
      //if i am not return anything i have to use break here after every case
    case 2:
      return "Sunday";
    case 3:
      return "Monday";

    default:
      return "Not any day";
  }
}
