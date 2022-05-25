import 'package:test/test.dart';
import './temperature.dart';

void main() {
  Temperature t1 = Temperature(54, TemperatureScale.CELSIUS);
  Temperature t2 = Temperature(157, TemperatureScale.FAHRENHEIT);
  Temperature t3 = Temperature(145.2, TemperatureScale.KELVIN);

  test('add t1 to t2', () {
    expect(t2.Add(t1).toString(),
        Temperature(286.2, TemperatureScale.FAHRENHEIT).toString());
  });

  test('substract t3 from t2', () {
    expect(t2.Substract(t3).toString(),
        Temperature(355.31, TemperatureScale.FAHRENHEIT).toString());
  });

  test('multiply t1 and t3', () {
    expect(t1.Multiply(t3).toString(),
        Temperature(-6909.3, TemperatureScale.CELSIUS).toString());
  });

  test('divide t1 and t2', () {
    expect(t1.Divide(t2).toString(),
        Temperature(0.78, TemperatureScale.CELSIUS).toString());
  });

  test('convert t1 to kelvin', () {
    expect(t1.ToKelvin().toString(),
        Temperature(327.15, TemperatureScale.KELVIN).toString());
  });

  test('convert t2 to celsius', () {
    expect(t2.ToCelsius().toString(),
        Temperature(69.44, TemperatureScale.CELSIUS).toString());
  });

  test('convert t3 to fahrenheit', () {
    expect(t3.ToFahrenheit().toString(),
        Temperature(-198.31, TemperatureScale.FAHRENHEIT).toString());
  });
}
