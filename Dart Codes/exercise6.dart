/*
  Ask the user for a string and print out whether this string is a palindrome or not.
*/

void main() {
  String name = "Mdam";

  int i = 0;
  int j = 0;
  bool palindrome = true;
  while (i <= j) {
    if (name[i] != name[j]) {
      print("It's not palindrome");
      palindrome = false;
      break;
    }
    i++;
    j--;
  }
  if (palindrome) {
    print("$name is palindrome.\n");
  }
}
