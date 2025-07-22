import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  final calc = StringCalculator();

  test('returns 0 for empty string', () {
    expect(calc.add(""), 0);
  });
}