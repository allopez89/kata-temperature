enum TemperatureScale { CELSIUS, FAHRENHEIT, KELVIN }

class Temperature {
  double value;
  TemperatureScale scale;

  Temperature(this.value, this.scale);

  Temperature Add(Temperature temp) {
    if (temp.scale == scale) {
      value += temp.value;
      return this;
    }
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
    if (temp.scale == scale) {
      value -= temp.value;
      return this;
    }
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
    if (temp.scale == scale) {
      value *= temp.value;
      return this;
    }
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
    if (temp.scale == scale) {
      value /= temp.value;
      return this;
    }
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
    if (scale == TemperatureScale.FAHRENHEIT) {
      value = ((value - 32) * 5) / 9;
      scale = TemperatureScale.CELSIUS;
      return this;
    }
    if (scale == TemperatureScale.KELVIN) {
      value = value - 273.15;
      scale = TemperatureScale.CELSIUS;
      return this;
    }
    return this;
  }

  Temperature ToFahrenheit() {
    if (scale == TemperatureScale.CELSIUS) {
      value = ((value * 9) / 5) + 32;
      scale = TemperatureScale.FAHRENHEIT;
      return this;
    }
    if (scale == TemperatureScale.KELVIN) {
      value = ((value * 9) / 5) - 459.67;
      scale = TemperatureScale.FAHRENHEIT;
      return this;
    }
    return this;
  }

  Temperature ToKelvin() {
    if (scale == TemperatureScale.CELSIUS) {
      value = value + 273.15;
      scale = TemperatureScale.KELVIN;
      return this;
    }
    if (scale == TemperatureScale.FAHRENHEIT) {
      value = ((value + 459.67) * 5) / 9;
      scale = TemperatureScale.KELVIN;
      return this;
    }
    return this;
  }

  @override
  String toString() {
    value = double.parse(value.toStringAsFixed(2));
    String strScale = scale.toString().split('.').last;
    return '$value $strScale';
  }
}
