class StringCalculator {
  int add(String input) {
    if (input.isEmpty) return 0;

    String numbers = input;
    String delimiter = r'[,\n]';

    if (input.startsWith('//')) {
      final match = RegExp(r'^//(.)\n').firstMatch(input);
      if (match != null) {
        delimiter = RegExp.escape(match.group(1)!);
        numbers = input.substring(input.indexOf('\n') + 1);
      }
    }

    final parts = numbers.split(RegExp(delimiter));
    final parsedNumbers = <int>[];
    final negativeNumbers = <int>[];

    for (var part in parts) {
      final n = int.parse(part);
      if (n < 0) negativeNumbers.add(n);
      parsedNumbers.add(n);
    }

    if (negativeNumbers.isNotEmpty) {
      throw ArgumentError('negative numbers not allowed ${negativeNumbers.join(', ')}');
    }

    return parsedNumbers.reduce((a, b) => a + b);
  }
}
