void main() {
  List<int> list = [-1, -3, 7, 9, 0, -6, 4, -2, 0, 10, -8, 5];
  int positiveCount = 0;
  int negativeCount = 0;
  int zeroCount = 0;

  for (int number in list) {
    if (number > 0) {
      positiveCount++;
    } else if (number < 0) {
      negativeCount++;
    } else {
      zeroCount++;
    }
  }

  print("Count of positive values: $positiveCount");
  print("Count of negative values: $negativeCount");
  print("Count of zeros: $zeroCount");
}
