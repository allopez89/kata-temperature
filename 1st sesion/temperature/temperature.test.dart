import 'package:test/test.dart';
import './temperature.dart';

void main() {
  Temperature t1 = new Temperature(1, TemperatureScale.CELSIUS);
  Temperature t2 = new Temperature(33.8, TemperatureScale.FAHRENHEIT);
  Temperature t3 = new Temperature(274.15, TemperatureScale.KELVIN);
  test('convert t2 to celcius', () {
    expect(t2.ToCelsius().toString(),
        new Temperature(1, TemperatureScale.CELSIUS).toString());
  });

  test('add t3 to t1', () {
    expect(t1.Add(t3).toString(),
        new Temperature(2, TemperatureScale.CELSIUS).toString());
  });

  test('substract t2 from t1', () {
    expect(t1.Substract(t2).toString(),
        new Temperature(1, TemperatureScale.CELSIUS).toString());
  });

  test('multiply t1 and t2', () {
    expect(t1.Multiply(t2).toString(),
        new Temperature(1, TemperatureScale.CELSIUS).toString());
  });

  test('divide t1 and t2', () {
    expect(t1.Divide(t2).toString(),
        new Temperature(1, TemperatureScale.CELSIUS).toString());
  });
}
