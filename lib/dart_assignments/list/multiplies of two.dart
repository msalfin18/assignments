void main() {
  List<int> list = [-1, -3, 7, 9, 0, -6, 4, -2, 0, 10, -8, 5];
  List<int> multiplesOfTwo = [];

  for (int number in list) {
    if (number % 2 == 0 && number != 0) {
      multiplesOfTwo.add(number);
    }
  }

  print("Multiples of 2 in the list are: $multiplesOfTwo");
}
