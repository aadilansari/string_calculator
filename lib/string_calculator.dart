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
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
