defmodule Conversion.Distance do
  @moduledoc """
  Converts various from one distance to another, e.g. feet to inches
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

  @spec convert(measurement :: float(), measurement(), measurement()) :: float()

  def convert(measurement, :miles, :miles), do: measurement
  def convert(measurement, :miles, :yards), do: measurement * 1_760
  def convert(measurement, :miles, :feet), do: measurement * 5_280
  def convert(measurement, :miles, :inches), do: measurement * 63_360
  def convert(measurement, :miles, :kilometers), do: measurement * 1.609344
  def convert(measurement, :miles, :meters), do: measurement * 1_609.344
  def convert(measurement, :miles, :centimeters), do: measurement * 160_934.4
  def convert(measurement, :miles, :milllimeters), do: measurement * 1_609_344
  def convert(measurement, :miles, :micrometers), do: measurement * 1_609_344_000
  def convert(measurement, :miles, :nanometers), do: measurement * 1_609_344_000_000

  def convert(measurement, :yards, :yards), do: measurement
  def convert(measurement, :yards, :miles), do: measurement / 1_760
  def convert(measurement, :yards, :feet), do: measurement * 3
  def convert(measurement, :yards, :inches), do: measurement * 36
  def convert(measurement, :yards, :kilometers), do: measurement * 0.000914
  def convert(measurement, :yards, :meters), do: measurement * 0.9144
  def convert(measurement, :yards, :centimeters), do: measurement * 91.44
  def convert(measurement, :yards, :milllimeters), do: measurement * 914.4
  def convert(measurement, :yards, :micrometers), do: measurement * 914_400
  def convert(measurement, :yards, :nanometers), do: measurement * 914_400_000

  def convert(measurement, :feet, :feet), do: measurement
  def convert(measurement, :feet, :miles), do: measurement / 5_280
  def convert(measurement, :feet, :yards), do: measurement / 3
  def convert(measurement, :feet, :inches), do: measurement * 12
  def convert(measurement, :feet, :kilometers), do: measurement * 0.000305
  def convert(measurement, :feet, :meters), do: measurement * 0.3048
  def convert(measurement, :feet, :centimeters), do: measurement * 30.48
  def convert(measurement, :feet, :milllimeters), do: measurement * 304.8
  def convert(measurement, :feet, :micrometers), do: measurement * 304_800
  def convert(measurement, :feet, :nanometers), do: measurement * 304_800_000

  def convert(measurement, :inches, :inches), do: measurement
  def convert(measurement, :inches, :miles), do: measurement / 63_360
  def convert(measurement, :inches, :yards), do: measurement / 36
  def convert(measurement, :inches, :feet), do: measurement / 12
  def convert(measurement, :inches, :kilometers), do: measurement * 2.54e-5
  def convert(measurement, :inches, :meters), do: measurement * 0.0254
  def convert(measurement, :inches, :centimeters), do: measurement * 2.54
  def convert(measurement, :inches, :milllimeters), do: measurement * 25.4
  def convert(measurement, :inches, :micrometers), do: measurement * 25_400
  def convert(measurement, :inches, :nanometers), do: measurement * 25_400_000

  def convert(measurement, :kilometers, :kilometers), do: measurement
  def convert(measurement, :kilometers, :miles), do: measurement * 0.621371
  def convert(measurement, :kilometers, :yards), do: measurement * 1_093.613298
  def convert(measurement, :kilometers, :feet), do: measurement * 3_280.839895
  def convert(measurement, :kilometers, :inches), do: measurement * 39_370.07874
  def convert(measurement, :kilometers, :meters), do: measurement * 1_000
  def convert(measurement, :kilometers, :centimeters), do: measurement * 100_000
  def convert(measurement, :kilometers, :milllimeters), do: measurement * 1_000_000
  def convert(measurement, :kilometers, :micrometers), do: measurement * 1_000_000_000
  def convert(measurement, :kilometers, :nanometers), do: measurement * 1_000_000_000_000

  def convert(measurement, :meters, :meters), do: measurement
  def convert(measurement, :meters, :miles), do: measurement / 0.000621
  def convert(measurement, :meters, :yards), do: measurement * 1.093613
  def convert(measurement, :meters, :feet), do: measurement * 3.28084
  def convert(measurement, :meters, :inches), do: measurement * 39.370079
  def convert(measurement, :meters, :kilometers), do: measurement / 1000
  def convert(measurement, :meters, :centimeters), do: measurement * 100
  def convert(measurement, :meters, :milllimeters), do: measurement * 1000
  def convert(measurement, :meters, :micrometers), do: measurement * 1_000_000
  def convert(measurement, :meters, :nanometers), do: measurement * 1_000_000_000

  def convert(measurement, :centimeters, :centimeters), do: measurement
  def convert(measurement, :centimeters, :miles), do: measurement * 6.2137e-6
  def convert(measurement, :centimeters, :yards), do: measurement * 0.010936
  def convert(measurement, :centimeters, :feet), do: measurement / 30.48
  def convert(measurement, :centimeters, :inches), do: measurement / 2.54
  def convert(measurement, :centimeters, :kilometers), do: measurement / 100_000
  def convert(measurement, :centimeters, :meters), do: measurement / 100
  def convert(measurement, :centimeters, :milllimeters), do: measurement * 10
  def convert(measurement, :centimeters, :micrometers), do: measurement * 10_000
  def convert(measurement, :centimeters, :nanometers), do: measurement * 10_000_000

  def convert(measurement, :millimeters, :milllimeters), do: measurement
  def convert(measurement, :millimeters, :miles), do: measurement / 1_609_344
  def convert(measurement, :millimeters, :yards), do: measurement * 0.001094
  def convert(measurement, :millimeters, :feet), do: measurement * 0.003281
  def convert(measurement, :millimeters, :inches), do: measurement / 25.4
  def convert(measurement, :millimeters, :kilometers), do: measurement / 1_000_000
  def convert(measurement, :millimeters, :meters), do: measurement / 1_000
  def convert(measurement, :millimeters, :centimeters), do: measurement / 10
  def convert(measurement, :millimeters, :micrometers), do: measurement * 1_000
  def convert(measurement, :millimeters, :nanometers), do: measurement * 1_000_000

  def convert(measurement, :micrometers, :micrometers), do: measurement
  def convert(measurement, :micrometers, :miles), do: measurement / 1_609_344_000
  def convert(measurement, :micrometers, :yards), do: measurement / 914_400
  def convert(measurement, :micrometers, :feet), do: measurement / 304_800
  def convert(measurement, :micrometers, :inches), do: measurement / 25_400
  def convert(measurement, :micrometers, :kilometers), do: measurement / 1_000_000_000
  def convert(measurement, :micrometers, :meters), do: measurement / 1_000_000
  def convert(measurement, :micrometers, :centimeters), do: measurement / 10_000
  def convert(measurement, :micrometers, :milllimeters), do: measurement / 1_000
  def convert(measurement, :micrometers, :nanometers), do: measurement * 1_000

  def convert(measurement, :nanometers, :nanometers), do: measurement
  def convert(measurement, :nanometers, :miles), do: measurement / 1_609_344_000_000
  def convert(measurement, :nanometers, :yards), do: measurement / 914_400_000
  def convert(measurement, :nanometers, :feet), do: measurement / 304_800_000
  def convert(measurement, :nanometers, :inches), do: measurement / 25_400_000
  def convert(measurement, :nanometers, :kilometers), do: measurement / 1_000_000_000_000
  def convert(measurement, :nanometers, :meters), do: measurement / 1_000_000_000
  def convert(measurement, :nanometers, :centimeters), do: measurement / 10_000_000
  def convert(measurement, :nanometers, :milllimeters), do: measurement / 1_000_000
  def convert(measurement, :nanometers, :micrometers), do: measurement / 1_000
end
