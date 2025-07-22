import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  final calc = StringCalculator();

  test('returns 0 for empty string', () {
    expect(calc.add(""), 0);
  });
  test('returns number for single input', () {
  expect(calc.add("1"), 1);
});
  test('returns sum for two numbers', () {
  expect(calc.add("1,5"), 6);
});
}