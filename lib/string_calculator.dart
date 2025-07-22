class StringCalculator {
  int add(String input) {
    if (input.isEmpty) return 0;
    final parts = input.split(RegExp(r'[,\n]'));
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
