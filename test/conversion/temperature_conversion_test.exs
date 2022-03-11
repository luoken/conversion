defmodule Conversion.TemperatureConversionTest do
  use ExUnit.Case
  alias Conversion.TemperatureConversion

  describe "convert from kelvin" do
    test "convert kelvin to celcius" do
      assert -241.15 = TemperatureConversion.convert(32, :kelvin, :celcius)
    end

    test "convert kelvin to fahrenheit" do
      assert -369.67 = TemperatureConversion.convert(50, :kelvin, :fahrenheit)
    end
  end

  describe "convert from celcius" do
    test "convert celcius to fahrenheit" do
      assert 68.0 = TemperatureConversion.convert(20, :celcius, :fahrenheit)
    end

    test "convert celcius to kelvin" do
      assert 285.65 = TemperatureConversion.convert(12.5, :celcius, :kelvin)
    end
  end

  describe "convert from fahrenheit" do
    test "convert fahrenheit to celcius" do
      assert 112.22 = TemperatureConversion.convert(234, :fahrenheit, :celcius)
    end

    test "convert fahrenheit to kelvin" do
      assert 266.48 = TemperatureConversion.convert(20, :fahrenheit, :kelvin)
    end
  end
end
