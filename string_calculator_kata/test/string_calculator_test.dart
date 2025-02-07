import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_kata/string_calculator.dart';

void main() {
  test('Empty string should return 0', () {
    expect(StringCalculator.add(''), equals(0));
  });
}
