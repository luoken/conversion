defmodule Conversion.TemperatureConversion do
  @moduledoc """
  This module is in charge of converting Celcius to Fahrenheit.
  """

  @kelvin_const 273.15

  @type(unit :: :celcius, :fahrenheit, :kelvin)

  @spec convert(float(), unit(), unit()) :: float()
  def convert(temp, :celcius, :fahrenheit) do
    (temp * (9 / 5) + 32) |> Float.round(2)
  end

  def convert(temp, :celcius, :kelvin) do
    (temp + @kelvin_const) |> Float.round(2)
  end

  def convert(temp, :fahrenheit, :celcius) do
    ((temp - 32) * (5 / 9)) |> Float.round(2)
  end

  def convert(temp, :fahrenheit, :kelvin) do
    (convert(temp, :fahrenheit, :celcius) + @kelvin_const) |> Float.round(2)
  end

  def convert(temp, :kelvin, :celcius) do
    (temp - @kelvin_const) |> Float.round(2)
  end

  def convert(temp, :kelvin, :fahrenheit) do
    ((temp - @kelvin_const) * (9 / 5) + 32) |> Float.round(2)
  end
end
