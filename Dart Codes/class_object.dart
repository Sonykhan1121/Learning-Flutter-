class Mathematics1 {
  int addition(int n1, int n2) {
    return n1 + n2;
  }

  int subtraction(int n1, int n2) {
    return n1 - n2;
  }

  int multiplication(int n1, int n2) {
    return n1 * n2;
  }

  double division(int n1, int n2) {
    return n1 / n2;
  }
}

class Mathematics2 {
  int n1 = 0, n2 = 0;

  Mathematics2(int n1, int n2) {
    this.n1 = n1;
    this.n2 = n2;
  }
  Mathematics2.anything() {
    print("This is a named constructor");
  }
  int addition() {
    return n1 + n2;
  }

  int subtraction() {
    return n1 - n2;
  }

  int multiplication() {
    return n1 * n2;
  }

  double division() {
    return n1 / n2;
  }
}

void main() {
  Mathematics1 math = new Mathematics1();
  print(math.addition(10, 5));
  print(math.division(10, 3));

  Mathematics2 math2 = new Mathematics2.anything();
  
  // print(math2.addition());
  // print(math2.multiplication());
  // print(math2.subtraction());
  // print(math2.division());
}
