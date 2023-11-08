void main() {
  List<int> list = [-1, -3, 7, 9, 0, -6, 4, -2, 0, 10, -8, 5];
  List<int> evenNumbers = [];

  for (int number in list) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }

  print("Even numbers in the list are: $evenNumbers");
}
