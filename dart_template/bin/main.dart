/// メインプログラムのエントリーポイント
/// Main program entry point
void main() {
  print('Hello, Dart World!');
  
  // 簡単な計算例 / Simple calculation example
  final calculator = Calculator();
  final result = calculator.add(10, 20);
  print('10 + 20 = $result');
}

/// 簡単な電卓クラス
/// Simple calculator class
class Calculator {
  /// 二つの数値を加算する
  /// Add two numbers together
  int add(int a, int b) {
    return a + b;
  }

  /// 二つの数値を減算する
  /// Subtract two numbers
  int subtract(int a, int b) {
    return a - b;
  }

  /// 二つの数値を乗算する
  /// Multiply two numbers
  int multiply(int a, int b) {
    return a * b;
  }

  /// 二つの数値を除算する（整数）
  /// Divide two numbers (integer division)
  double divide(int a, int b) {
    if (b == 0) {
      throw ArgumentError('ゼロで割ることはできません / Cannot divide by zero');
    }
    return a / b;
  }
}