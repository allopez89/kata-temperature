import 'package:test/test.dart';
import './temperature.dart';

void main() {
  Temperature t1 = Temperature(15, TemperatureScale.CELSIUS);
  Temperature t2 = Temperature(98, TemperatureScale.FAHRENHEIT);
  Temperature t3 = Temperature(268, TemperatureScale.KELVIN);
  Temperature t4 = Temperature(57, TemperatureScale.FAHRENHEIT);
  Temperature t5 = Temperature(754, TemperatureScale.CELSIUS);
  Temperature t6 = Temperature(11, TemperatureScale.FAHRENHEIT);
  test('add t2 to t1', () {
    expect(t1.Add(t2).toString(),
        Temperature(51.67, TemperatureScale.CELSIUS).toString());
  });
  test('substract t3 to t4', () {
    expect(t4.Substract(t3).toString(),
        Temperature(34.27, TemperatureScale.FAHRENHEIT).toString());
  });
  test('multiply t1 and t5', () {
    expect(t1.Multiply(t5).toString(),
        Temperature(38959.18, TemperatureScale.CELSIUS).toString());
  });
  test('divide t4 and t6', () {
    expect(t4.Divide(t6).toString(),
        Temperature(3.12, TemperatureScale.FAHRENHEIT).toString());
  });
}
