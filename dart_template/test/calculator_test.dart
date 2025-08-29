import 'package:test/test.dart';
import '../bin/main.dart';

/// 電卓クラスのテスト
/// Tests for Calculator class
void main() {
  group('Calculator tests', () {
    late Calculator calculator;

    setUp(() {
      calculator = Calculator();
    });

    test('should add two numbers correctly', () {
      expect(calculator.add(2, 3), equals(5));
      expect(calculator.add(-1, 1), equals(0));
      expect(calculator.add(0, 0), equals(0));
    });

    test('should subtract two numbers correctly', () {
      expect(calculator.subtract(5, 3), equals(2));
      expect(calculator.subtract(1, 1), equals(0));
      expect(calculator.subtract(0, 5), equals(-5));
    });

    test('should multiply two numbers correctly', () {
      expect(calculator.multiply(3, 4), equals(12));
      expect(calculator.multiply(-2, 3), equals(-6));
      expect(calculator.multiply(0, 100), equals(0));
    });

    test('should divide two numbers correctly', () {
      expect(calculator.divide(10, 2), equals(5.0));
      expect(calculator.divide(7, 2), equals(3.5));
      expect(calculator.divide(-6, 3), equals(-2.0));
    });

    test('should throw error when dividing by zero', () {
      expect(
        () => calculator.divide(10, 0),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}