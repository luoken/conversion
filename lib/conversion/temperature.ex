defmodule Conversion.Temperature do
  @moduledoc """
  This module is in charge of converting between temperature units. e.g. kelvin, celcius, fahrenheit
  """

  @kelvin_const 273.15

  @type unit :: :celcius | :fahrenheit | :kelvin

  @spec convert(float(), unit(), unit()) :: float()
  def convert(temp, :celcius, :fahrenheit) do
    temp * (9 / 5) + 32
  end

  def convert(temp, :celcius, :kelvin) do
    temp + @kelvin_const
  end

  def convert(temp, :fahrenheit, :celcius) do
    (temp - 32) * (5 / 9)
  end

  def convert(temp, :fahrenheit, :kelvin) do
    (temp - 32) * (5 / 9) + @kelvin_const
  end

  def convert(temp, :kelvin, :celcius) do
    temp - @kelvin_const
  end

  def convert(temp, :kelvin, :fahrenheit) do
    (temp - @kelvin_const) * (9 / 5) + 32
  end
end
