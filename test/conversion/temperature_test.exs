defmodule Conversion.TemperatureTest do
  use ExUnit.Case
  alias Conversion.Temperature

  describe "convert from kelvin" do
    test "convert kelvin to celcius" do
      assert -241.14999999999998 = Temperature.convert(32, :kelvin, :celcius)
    end

    test "convert kelvin to fahrenheit" do
      assert -369.66999999999996 = Temperature.convert(50, :kelvin, :fahrenheit)
    end
  end

  describe "convert from celcius" do
    test "convert celcius to fahrenheit" do
      assert 68.0 = Temperature.convert(20, :celcius, :fahrenheit)
    end

    test "convert celcius to kelvin" do
      assert 285.65 = Temperature.convert(12.5, :celcius, :kelvin)
    end
  end

  describe "convert from fahrenheit" do
    test "convert fahrenheit to celcius" do
      assert 112.22222222222223 = Temperature.convert(234, :fahrenheit, :celcius)
    end

    test "convert fahrenheit to kelvin" do
      assert 266.4833333333333 = Temperature.convert(20, :fahrenheit, :kelvin)
    end
  end
end
