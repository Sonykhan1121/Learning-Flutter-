class Mathematics {
  int _numerator = 0;
  int _denominator = 0;
  void set num_tr(int val) {
    _numerator = val * 10;
  }

  void set deno_tr(int val) {
    _denominator = val * 10;
  }

  int get num_tr {
    return _numerator;
  }

  int get deno_tr => _denominator;

  void printFraction() {
    print("$_numerator/$_denominator");
  }
}

void main() {
  Mathematics m = new Mathematics();
  m.num_tr = 10;
  print(m.num_tr);
  m.deno_tr = 20;
  print(m.deno_tr);
}
