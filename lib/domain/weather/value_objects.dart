class Temperature {
  final double kelvin;

  Temperature(this.kelvin);

  /// Convert temperature to Celsius
  double get celsius => kelvin - 273.15;

  /// Convert temperature to Fahrenheit
  double get fahrenheit => kelvin * (9 / 5) - 459.67;

  @override
  String toString() => '${celsius.toStringAsFixed(1)} Celsius';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Temperature && o.kelvin == kelvin;
  }

  @override
  int get hashCode => kelvin.hashCode;

  String get displayableCelsius => '${celsius.toStringAsFixed(0)}º C';
}
