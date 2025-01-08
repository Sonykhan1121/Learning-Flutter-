void main() {
  print("Fibonacchi 10th is : ${fibonacci(10)}");
}

// 0 1 1 2 3 5 8 13 21 34 55 89 144 233
int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
}
