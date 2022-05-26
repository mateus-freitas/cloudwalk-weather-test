import 'package:flutter_test/flutter_test.dart';
import 'package:weather_test/domain/weather/value_objects.dart';

void main() {
  late Temperature tempTest;

  setUp(() {
    tempTest = Temperature(296.15);
  });

  test('should correctly convert Kelvin to Celsius', () {
    // act
    final celsius = tempTest.celsius;

    // assert
    expect(celsius, equals(23.0));
  });

  test('should correctly convert Kelvin to Fahrenheit', () {
    // act
    final fahrenheit = tempTest.fahrenheit.toStringAsFixed(1);

    // assert
    expect(fahrenheit, equals('73.4'));
  });
}
