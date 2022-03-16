defmodule Conversion.Time do
  @moduledoc """
  This module is in charge of converting from one time unit to another, e.g. seconds to minutes
  """

  @typedoc """
  - `:interval` - Integer representing a time value
  - `:unit` - Atom representation of time unit. e.g. :seconds, :minutes, :hours, :days, :weeks, :years
  """

  @type unit :: :milliseconds | :seconds | :minutes | :hours | :days | :weeks | :years

  @doc """
  from -> to
  Givien a time interval along with two units of time measurement e.g. :milliseconds, :hours.
  Convert from one unit to the other. The initial unit is the from case and the latter is the
  unit we are converting to

  ## Examples

      iex> Conversion.convert(1, :seconds, :milliseconds)
      1_000

      iex> Conversion.convert(1, :hours, :seconds)
      3_600
  """
  @spec convert(interval :: integer(), unit(), unit()) :: float()
  def convert(interval, :milliseconds, :milliseconds) when is_integer(interval), do: interval
  def convert(interval, :milliseconds, :seconds) when is_integer(interval), do: interval * 1000

  def convert(interval, :milliseconds, :minutes) when is_integer(interval),
    do: convert(interval, :milliseconds, :seconds) * 60

  def convert(interval, :milliseconds, :hours) when is_integer(interval),
    do: convert(interval, :milliseconds, :minutes) * 60

  def convert(interval, :milliseconds, :days) when is_integer(interval),
    do: convert(interval, :milliseconds, :hours) * 24

  def convert(interval, :milliseconds, :weeks) when is_integer(interval),
    do: convert(interval, :milliseconds, :days) * 7

  def convert(interval, :milliseconds, :years) when is_integer(interval),
    do: convert(interval, :milliseconds, :days) * 365.25

  def convert(interval, :seconds, :milliseconds), do: interval / 1000
  def convert(interval, :seconds, :seconds) when is_integer(interval), do: interval
  def convert(interval, :seconds, :minutes) when is_integer(interval), do: interval * 60

  def convert(interval, :seconds, :hours) when is_integer(interval),
    do: convert(interval, :seconds, :minutes) * 60

  def convert(interval, :seconds, :days) when is_integer(interval),
    do: convert(interval, :seconds, :hours) * 24

  def convert(interval, :seconds, :weeks) when is_integer(interval),
    do: convert(interval, :seconds, :days) * 7

  def convert(interval, :seconds, :years) when is_integer(interval),
    do: convert(interval, :seconds, :days) * 365.25

  def convert(interval, :minutes, :milliseconds), do: convert(interval, :minutes, :seconds) / 1000
  def convert(interval, :minutes, :seconds) when is_integer(interval), do: interval / 60
  def convert(interval, :minutes, :minutes) when is_integer(interval), do: interval
  def convert(interval, :minutes, :hours) when is_integer(interval), do: interval * 60

  def convert(interval, :minutes, :days) when is_integer(interval),
    do: convert(interval, :minutes, :hours) * 24

  def convert(interval, :minutes, :weeks) when is_integer(interval),
    do: convert(interval, :minutes, :days) * 7

  def convert(interval, :minutes, :years) when is_integer(interval),
    do: convert(interval, :minutes, :days) * 365.25

  def convert(interval, :hours, :milliseconds), do: convert(interval, :hours, :seconds) / 1000

  def convert(interval, :hours, :seconds) when is_integer(interval),
    do: convert(interval, :hours, :minutes) / 60

  def convert(interval, :hours, :minutes) when is_integer(interval), do: interval / 60
  def convert(interval, :hours, :hours) when is_integer(interval), do: interval
  def convert(interval, :hours, :days) when is_integer(interval), do: interval * 24

  def convert(interval, :hours, :weeks) when is_integer(interval),
    do: convert(interval, :hours, :days) * 7

  def convert(interval, :hours, :years) when is_integer(interval),
    do: convert(interval, :hours, :days) * 365.25

  def convert(interval, :days, :milliseconds), do: convert(interval, :days, :seconds) / 1000

  def convert(interval, :days, :seconds) when is_integer(interval),
    do: convert(interval, :days, :minutes) / 60

  def convert(interval, :days, :minutes) when is_integer(interval),
    do: convert(interval, :days, :hours) / 60

  def convert(interval, :days, :hours) when is_integer(interval), do: interval / 24
  def convert(interval, :days, :days) when is_integer(interval), do: interval
  def convert(interval, :days, :weeks) when is_integer(interval), do: interval * 7
  def convert(interval, :days, :years) when is_integer(interval), do: interval * 365.25

  def convert(interval, :weeks, :milliseconds), do: convert(interval, :weeks, :seconds) / 1000

  def convert(interval, :weeks, :seconds) when is_integer(interval),
    do: convert(interval, :weeks, :minutes) / 60

  def convert(interval, :weeks, :minutes) when is_integer(interval),
    do: convert(interval, :weeks, :hours) / 60

  def convert(interval, :weeks, :hours) when is_integer(interval),
    do: convert(interval, :weeks, :days) / 24

  def convert(interval, :weeks, :days) when is_integer(interval), do: interval / 7
  def convert(interval, :weeks, :weeks) when is_integer(interval), do: interval
  def convert(interval, :weeks, :years) when is_integer(interval), do: interval * 51.1429

  def convert(interval, :years, :milliseconds), do: convert(interval, :years, :seconds) / 1000

  def convert(interval, :years, :seconds) when is_integer(interval),
    do: convert(interval, :years, :minutes) / 60

  def convert(interval, :years, :minutes) when is_integer(interval),
    do: convert(interval, :years, :hours) / 60

  def convert(interval, :years, :hours) when is_integer(interval),
    do: convert(interval, :years, :days) / 24

  def convert(interval, :years, :days) when is_integer(interval),
    do: convert(interval, :years, :weeks) / 7

  def convert(interval, :years, :weeks) when is_integer(interval), do: interval / 51.1429
  def convert(interval, :years, :years) when is_integer(interval), do: interval
end
