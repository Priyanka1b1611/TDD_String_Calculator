import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_kata/string_calculator.dart';

void main() {
  test('Empty string should return 0', () {
    expect(StringCalculator.add(''), equals(0));
  });

  test('Single number should return its value', () {
    expect(StringCalculator.add('1'), equals(1));
  });

  test('Two numbers should return their sum', () {
    expect(StringCalculator.add('1,2'), equals(3));
  });

  test('Multiple numbers should return their sum', () {
    expect(StringCalculator.add('1,2,3,4'), equals(10));
  });

  test('New line as a delimiter should work like a comma', () {
    expect(StringCalculator.add('1\n2,3'), equals(6));
  });


}
