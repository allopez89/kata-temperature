enum TemperatureScale { CELSIUS, FAHRENHEIT, KELVIN }

class Temperature {
  double value;
  TemperatureScale scale;

  Temperature(this.value, this.scale);

  Temperature Add(Temperature temp) {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return Temperature(value + temp.ToCelsius().value, scale);
      case TemperatureScale.FAHRENHEIT:
        return Temperature(value + temp.ToFahrenheit().value, scale);
      case TemperatureScale.KELVIN:
        return Temperature(value + temp.ToKelvin().value, scale);
    }
  }

  Temperature Substract(Temperature temp) {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return Temperature(value - temp.ToCelsius().value, scale);
      case TemperatureScale.FAHRENHEIT:
        return Temperature(value - temp.ToFahrenheit().value, scale);
      case TemperatureScale.KELVIN:
        return Temperature(value - temp.ToKelvin().value, scale);
    }
  }

  Temperature Multiply(Temperature temp) {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return Temperature(value * temp.ToCelsius().value, scale);
      case TemperatureScale.FAHRENHEIT:
        return Temperature(value * temp.ToFahrenheit().value, scale);
      case TemperatureScale.KELVIN:
        return Temperature(value * temp.ToKelvin().value, scale);
    }
  }

  Temperature Divide(Temperature temp) {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return Temperature(value / temp.ToCelsius().value, scale);
      case TemperatureScale.FAHRENHEIT:
        return Temperature(value / temp.ToFahrenheit().value, scale);
      case TemperatureScale.KELVIN:
        return Temperature(value / temp.ToKelvin().value, scale);
    }
  }

  Temperature ToCelsius() {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return this;
      case TemperatureScale.FAHRENHEIT:
        return Temperature((value - 32) * 5 / 9, TemperatureScale.CELSIUS);
      case TemperatureScale.KELVIN:
        return Temperature((value - 273.15), TemperatureScale.CELSIUS);
    }
  }

  Temperature ToFahrenheit() {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return Temperature((value * 9) / 5 + 32, TemperatureScale.FAHRENHEIT);
      case TemperatureScale.FAHRENHEIT:
        return this;
      case TemperatureScale.KELVIN:
        return Temperature(
            (value * 9) / 5 - 459.67, TemperatureScale.FAHRENHEIT);
    }
  }

  Temperature ToKelvin() {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return Temperature(value + 273.15, TemperatureScale.KELVIN);
      case TemperatureScale.FAHRENHEIT:
        return Temperature((value + 459.67) * 5 / 9, TemperatureScale.KELVIN);
      case TemperatureScale.KELVIN:
        return this;
    }
  }

  @override
  String toString() {
    value = double.parse(value.toStringAsFixed(2));
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return '$value °C';
      case TemperatureScale.FAHRENHEIT:
        return '$value °F';
      case TemperatureScale.KELVIN:
        return '$value K';
    }
  }
}
