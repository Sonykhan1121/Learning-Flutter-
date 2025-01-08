/*
Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

*/

void main() {
  int n = 18;
  print([
    for (int i = 1; i <= n; i++) if (n % i == 0) i
  ]);
}
