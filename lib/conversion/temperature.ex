defmodule Conversion.Temperature do
  @moduledoc """
  This module is in charge of converting between different temperature values. e.g. kelvin, celcius, fahrenheit
  """

  @kelvin_const 273.15

  @typedoc """
  Temperature values, e.g. celcius, kelvin
  """
  @type value :: :celcius | :fahrenheit | :kelvin

  @spec convert(measurement :: float(), from :: value(), to :: value()) :: float()
  def convert(measurement, :celcius, :fahrenheit), do: measurement * (9 / 5) + 32
  def convert(measurement, :celcius, :kelvin), do: measurement + @kelvin_const

  def convert(measurement, :fahrenheit, :celcius), do: (measurement - 32) * (5 / 9)
  def convert(measurement, :fahrenheit, :kelvin), do: (measurement - 32) * (5 / 9) + @kelvin_const

  def convert(measurement, :kelvin, :celcius), do: measurement - @kelvin_const
  def convert(measurement, :kelvin, :fahrenheit), do: (measurement - @kelvin_const) * (9 / 5) + 32
end
