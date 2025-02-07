class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    RegExp delimiterPattern = RegExp(r'[,\n]'); // Default delimiters: comma or newline

    // Check for custom delimiter
    if (numbers.startsWith('//')) {
      var parts = numbers.split('\n');
      delimiterPattern = RegExp(RegExp.escape(parts[0].substring(2))); // Extract custom delimiter
      numbers = parts[1]; // Remove delimiter declaration
    }

    var numList = numbers.split(delimiterPattern); // Use RegExp to split

    var parsedNumbers = numList.where((num) => num.isNotEmpty).map(int.parse);

    return parsedNumbers.reduce((a, b) => a + b);
  }
}
