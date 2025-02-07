class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    RegExp delimiterPattern = RegExp(r'[,\n]'); // Default delimiters: comma or newline

    if (numbers.startsWith('//')) {
      var parts = numbers.split('\n');
      delimiterPattern = RegExp(RegExp.escape(parts[0].substring(2))); // Extract delimiter
      numbers = parts[1]; // Remove delimiter declaration
    }

    var numList = numbers.split(delimiterPattern);
    var parsedNumbers = numList.where((num) => num.isNotEmpty).map(int.parse).toList();

    // Collect negative numbers
    var negatives = parsedNumbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed: ${negatives.join(', ')}');
    }

    return parsedNumbers.reduce((a, b) => a + b);
  }
}
