class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    // Split by comma or newline
    var numList = numbers.split(RegExp(r'[,\n]'));

    // Filter out empty strings before parsing
    var parsedNumbers = numList.where((num) => num.isNotEmpty).map(int.parse);

    return parsedNumbers.reduce((a, b) => a + b);
  }
}
