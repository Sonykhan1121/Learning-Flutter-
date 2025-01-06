void main() {
  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }
  int n = 5;
  print("Factorial of $n is : ${factorial(n)}");
}

int factorial(int i) {
  if (i == 1) return i;

  return i * factorial(i - 1);
}
