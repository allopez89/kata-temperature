enum TemperatureScale { CELSIUS, FAHRENHEIT, KELVIN }

class Temperature {
  double value;
  TemperatureScale scale;

  Temperature(this.value, this.scale);

  Temperature Add(Temperature temp) {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        value += temp.ToCelsius().value;
        return this;
      case TemperatureScale.FAHRENHEIT:
        value += temp.ToFahrenheit().value;
        return this;
      case TemperatureScale.KELVIN:
        value += temp.ToKelvin().value;
        return this;
    }
  }

  Temperature Substract(Temperature temp) {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        value -= temp.ToCelsius().value;
        return this;
      case TemperatureScale.FAHRENHEIT:
        value -= temp.ToFahrenheit().value;
        return this;
      case TemperatureScale.KELVIN:
        value -= temp.ToKelvin().value;
        return this;
    }
  }

  Temperature Multiply(Temperature temp) {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        value *= temp.ToCelsius().value;
        return this;
      case TemperatureScale.FAHRENHEIT:
        value *= temp.ToFahrenheit().value;
        return this;
      case TemperatureScale.KELVIN:
        value *= temp.ToKelvin().value;
        return this;
    }
  }

  Temperature Divide(Temperature temp) {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        value /= temp.ToCelsius().value;
        return this;
      case TemperatureScale.FAHRENHEIT:
        value /= temp.ToFahrenheit().value;
        return this;
      case TemperatureScale.KELVIN:
        value /= temp.ToKelvin().value;
        return this;
    }
  }

  Temperature ToCelsius() {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return this;
      case TemperatureScale.FAHRENHEIT:
        value = (value - 32) * 5 / 9;
        scale = TemperatureScale.CELSIUS;
        return this;
      case TemperatureScale.KELVIN:
        value = value + 273.15;
        scale = TemperatureScale.CELSIUS;
        return this;
    }
  }

  Temperature ToFahrenheit() {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        value = (value * 9) / 5 + 32;
        scale = TemperatureScale.FAHRENHEIT;
        return this;
      case TemperatureScale.FAHRENHEIT:
        return this;
      case TemperatureScale.KELVIN:
        value = (value * 9) / 5 - 459.67;
        scale = TemperatureScale.FAHRENHEIT;
        return this;
    }
  }

  Temperature ToKelvin() {
    switch (scale) {
      case TemperatureScale.CELSIUS:
        value = value + 273.15;
        scale = TemperatureScale.KELVIN;
        return this;
      case TemperatureScale.FAHRENHEIT:
        value = (value + 459.67) * 5 / 9;
        scale = TemperatureScale.KELVIN;
        return this;
      case TemperatureScale.KELVIN:
        return this;
    }
  }

  @override
  String toString() {
    value = double.parse(value.toStringAsFixed(2));
    switch (scale) {
      case TemperatureScale.CELSIUS:
        return '$value°C';
      case TemperatureScale.FAHRENHEIT:
        return '$value°F';
      case TemperatureScale.KELVIN:
        return '$value K';
    }
  }
}
