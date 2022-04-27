defmodule Conversion.Distance do
  @moduledoc """
  Converts from one distance to another, e.g. feet to inches
  """

  @typedoc """
  Distance measurement, e.g. :feet, inches
  """
  @type measurement ::
          :miles
          | :yards
          | :feet
          | :inches
          | :kilometers
          | :meters
          | :centimeters
          | :millimeters
          | :micrometers
          | :nanometers

  @spec convert(measurement_value :: float(), from :: measurement(), to :: measurement()) ::
          float()

  def convert(measurement_value, :miles, :miles), do: measurement_value
  def convert(measurement_value, :miles, :yards), do: measurement_value * 1_760
  def convert(measurement_value, :miles, :feet), do: measurement_value * 5_280
  def convert(measurement_value, :miles, :inches), do: measurement_value * 63_360
  def convert(measurement_value, :miles, :kilometers), do: measurement_value * 1.609344
  def convert(measurement_value, :miles, :meters), do: measurement_value * 1_609.344
  def convert(measurement_value, :miles, :centimeters), do: measurement_value * 160_934.4
  def convert(measurement_value, :miles, :milllimeters), do: measurement_value * 1_609_344
  def convert(measurement_value, :miles, :micrometers), do: measurement_value * 1_609_344_000
  def convert(measurement_value, :miles, :nanometers), do: measurement_value * 1_609_344_000_000

  def convert(measurement_value, :yards, :yards), do: measurement_value
  def convert(measurement_value, :yards, :miles), do: measurement_value / 1_760
  def convert(measurement_value, :yards, :feet), do: measurement_value * 3
  def convert(measurement_value, :yards, :inches), do: measurement_value * 36
  def convert(measurement_value, :yards, :kilometers), do: measurement_value * 0.000914
  def convert(measurement_value, :yards, :meters), do: measurement_value * 0.9144
  def convert(measurement_value, :yards, :centimeters), do: measurement_value * 91.44
  def convert(measurement_value, :yards, :milllimeters), do: measurement_value * 914.4
  def convert(measurement_value, :yards, :micrometers), do: measurement_value * 914_400
  def convert(measurement_value, :yards, :nanometers), do: measurement_value * 914_400_000

  def convert(measurement_value, :feet, :feet), do: measurement_value
  def convert(measurement_value, :feet, :miles), do: measurement_value / 5_280
  def convert(measurement_value, :feet, :yards), do: measurement_value / 3
  def convert(measurement_value, :feet, :inches), do: measurement_value * 12
  def convert(measurement_value, :feet, :kilometers), do: measurement_value * 0.000305
  def convert(measurement_value, :feet, :meters), do: measurement_value * 0.3048
  def convert(measurement_value, :feet, :centimeters), do: measurement_value * 30.48
  def convert(measurement_value, :feet, :milllimeters), do: measurement_value * 304.8
  def convert(measurement_value, :feet, :micrometers), do: measurement_value * 304_800
  def convert(measurement_value, :feet, :nanometers), do: measurement_value * 304_800_000

  def convert(measurement_value, :inches, :inches), do: measurement_value
  def convert(measurement_value, :inches, :miles), do: measurement_value / 63_360
  def convert(measurement_value, :inches, :yards), do: measurement_value / 36
  def convert(measurement_value, :inches, :feet), do: measurement_value / 12
  def convert(measurement_value, :inches, :kilometers), do: measurement_value * 2.54e-5
  def convert(measurement_value, :inches, :meters), do: measurement_value * 0.0254
  def convert(measurement_value, :inches, :centimeters), do: measurement_value * 2.54
  def convert(measurement_value, :inches, :milllimeters), do: measurement_value * 25.4
  def convert(measurement_value, :inches, :micrometers), do: measurement_value * 25_400
  def convert(measurement_value, :inches, :nanometers), do: measurement_value * 25_400_000

  def convert(measurement_value, :kilometers, :kilometers), do: measurement_value
  def convert(measurement_value, :kilometers, :miles), do: measurement_value * 0.621371
  def convert(measurement_value, :kilometers, :yards), do: measurement_value * 1_093.613298
  def convert(measurement_value, :kilometers, :feet), do: measurement_value * 3_280.839895
  def convert(measurement_value, :kilometers, :inches), do: measurement_value * 39_370.07874
  def convert(measurement_value, :kilometers, :meters), do: measurement_value * 1_000
  def convert(measurement_value, :kilometers, :centimeters), do: measurement_value * 100_000
  def convert(measurement_value, :kilometers, :milllimeters), do: measurement_value * 1_000_000
  def convert(measurement_value, :kilometers, :micrometers), do: measurement_value * 1_000_000_000

  def convert(measurement_value, :kilometers, :nanometers),
    do: measurement_value * 1_000_000_000_000

  def convert(measurement_value, :meters, :meters), do: measurement_value
  def convert(measurement_value, :meters, :miles), do: measurement_value / 0.000621
  def convert(measurement_value, :meters, :yards), do: measurement_value * 1.093613
  def convert(measurement_value, :meters, :feet), do: measurement_value * 3.28084
  def convert(measurement_value, :meters, :inches), do: measurement_value * 39.370079
  def convert(measurement_value, :meters, :kilometers), do: measurement_value / 1000
  def convert(measurement_value, :meters, :centimeters), do: measurement_value * 100
  def convert(measurement_value, :meters, :milllimeters), do: measurement_value * 1000
  def convert(measurement_value, :meters, :micrometers), do: measurement_value * 1_000_000
  def convert(measurement_value, :meters, :nanometers), do: measurement_value * 1_000_000_000

  def convert(measurement_value, :centimeters, :centimeters), do: measurement_value
  def convert(measurement_value, :centimeters, :miles), do: measurement_value * 6.2137e-6
  def convert(measurement_value, :centimeters, :yards), do: measurement_value * 0.010936
  def convert(measurement_value, :centimeters, :feet), do: measurement_value / 30.48
  def convert(measurement_value, :centimeters, :inches), do: measurement_value / 2.54
  def convert(measurement_value, :centimeters, :kilometers), do: measurement_value / 100_000
  def convert(measurement_value, :centimeters, :meters), do: measurement_value / 100
  def convert(measurement_value, :centimeters, :milllimeters), do: measurement_value * 10
  def convert(measurement_value, :centimeters, :micrometers), do: measurement_value * 10_000
  def convert(measurement_value, :centimeters, :nanometers), do: measurement_value * 10_000_000

  def convert(measurement_value, :millimeters, :milllimeters), do: measurement_value
  def convert(measurement_value, :millimeters, :miles), do: measurement_value / 1_609_344
  def convert(measurement_value, :millimeters, :yards), do: measurement_value * 0.001094
  def convert(measurement_value, :millimeters, :feet), do: measurement_value * 0.003281
  def convert(measurement_value, :millimeters, :inches), do: measurement_value / 25.4
  def convert(measurement_value, :millimeters, :kilometers), do: measurement_value / 1_000_000
  def convert(measurement_value, :millimeters, :meters), do: measurement_value / 1_000
  def convert(measurement_value, :millimeters, :centimeters), do: measurement_value / 10
  def convert(measurement_value, :millimeters, :micrometers), do: measurement_value * 1_000
  def convert(measurement_value, :millimeters, :nanometers), do: measurement_value * 1_000_000

  def convert(measurement_value, :micrometers, :micrometers), do: measurement_value
  def convert(measurement_value, :micrometers, :miles), do: measurement_value / 1_609_344_000
  def convert(measurement_value, :micrometers, :yards), do: measurement_value / 914_400
  def convert(measurement_value, :micrometers, :feet), do: measurement_value / 304_800
  def convert(measurement_value, :micrometers, :inches), do: measurement_value / 25_400
  def convert(measurement_value, :micrometers, :kilometers), do: measurement_value / 1_000_000_000
  def convert(measurement_value, :micrometers, :meters), do: measurement_value / 1_000_000
  def convert(measurement_value, :micrometers, :centimeters), do: measurement_value / 10_000
  def convert(measurement_value, :micrometers, :milllimeters), do: measurement_value / 1_000
  def convert(measurement_value, :micrometers, :nanometers), do: measurement_value * 1_000

  def convert(measurement_value, :nanometers, :nanometers), do: measurement_value
  def convert(measurement_value, :nanometers, :miles), do: measurement_value / 1_609_344_000_000
  def convert(measurement_value, :nanometers, :yards), do: measurement_value / 914_400_000
  def convert(measurement_value, :nanometers, :feet), do: measurement_value / 304_800_000
  def convert(measurement_value, :nanometers, :inches), do: measurement_value / 25_400_000

  def convert(measurement_value, :nanometers, :kilometers),
    do: measurement_value / 1_000_000_000_000

  def convert(measurement_value, :nanometers, :meters), do: measurement_value / 1_000_000_000
  def convert(measurement_value, :nanometers, :centimeters), do: measurement_value / 10_000_000
  def convert(measurement_value, :nanometers, :milllimeters), do: measurement_value / 1_000_000
  def convert(measurement_value, :nanometers, :micrometers), do: measurement_value / 1_000
end
