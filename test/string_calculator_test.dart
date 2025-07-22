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

  test('handles new lines as delimiters', () {
  expect(calc.add("1\n2,3"), 6);
});

test('supports custom delimiter', () {
  expect(calc.add("//;\n1;2"), 3);
});
test('throws on single negative number', () {
  expect(() => calc.add("1,-2"),
      throwsA(predicate((e) => e is ArgumentError && e.message == 'negative numbers not allowed -2')));
});

test('throws on multiple negative numbers', () {
  expect(() => calc.add("2,-4,3,-5"),
      throwsA(predicate((e) => e is ArgumentError && e.message == 'negative numbers not allowed -4, -5')));
});


}