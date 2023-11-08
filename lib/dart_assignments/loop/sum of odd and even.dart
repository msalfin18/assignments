void main() {
  int sumEven = 0;
  int sumOdd = 0;

  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      sumEven += i;
    } else {
      sumOdd += i;
    }
  }

  print("Sum of even numbers: $sumEven");
  print("Sum of odd numbers: $sumOdd");
}
