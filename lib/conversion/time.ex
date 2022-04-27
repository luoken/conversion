defmodule Conversion.Time do
  @moduledoc """
  This module is in charge of converting from one time value to another, e.g. seconds to minutes
  """

  @year_const 365.25

  @typedoc """
  - `:value` - Atom representation of time measurement. e.g. :seconds, :minutes, :hours, :days, :weeks, :years
  """

  @type value :: :milliseconds | :seconds | :minutes | :hours | :days | :weeks | :years

  @doc """
  Given a time `time_value` along with two measurements e.g. :milliseconds, :hours.
  Convert from one measurement to the other. The initial unit is the from case and the latter is the
  unit we are converting to.

  ## Examples

      iex> Conversion.convert(1, :seconds, :milliseconds)
      1_000

      iex> Conversion.convert(1, :hours, :seconds)
      3_600
  """
  @spec convert(time_value :: float(), from :: value(), to :: value()) :: float()
  def convert(time_value, :milliseconds, :milliseconds)
      when is_float(time_value) or is_integer(time_value),
      do: time_value

  def convert(time_value, :milliseconds, :seconds)
      when is_float(time_value) or is_integer(time_value),
      do: time_value / 1000

  def convert(time_value, :milliseconds, :minutes)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :milliseconds, :seconds) / 60

  def convert(time_value, :milliseconds, :hours)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :milliseconds, :minutes) / 60

  def convert(time_value, :milliseconds, :days)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :milliseconds, :hours) / 24

  def convert(time_value, :milliseconds, :weeks)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :milliseconds, :days) / 7

  def convert(time_value, :milliseconds, :years)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :milliseconds, :days) / @year_const

  def convert(time_value, :seconds, :milliseconds)
      when is_float(time_value) or is_integer(time_value),
      do: time_value / 1000

  def convert(time_value, :seconds, :seconds) when is_float(time_value) or is_integer(time_value),
    do: time_value

  def convert(time_value, :seconds, :minutes) when is_float(time_value) or is_integer(time_value),
    do: time_value / 60

  def convert(time_value, :seconds, :hours) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :seconds, :minutes) / 60

  def convert(time_value, :seconds, :days) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :seconds, :hours) / 24

  def convert(time_value, :seconds, :weeks) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :seconds, :days) / 7

  def convert(time_value, :seconds, :years) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :seconds, :days) / @year_const

  def convert(time_value, :minutes, :milliseconds)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :minutes, :seconds) / 1000

  def convert(time_value, :minutes, :seconds) when is_float(time_value) or is_integer(time_value),
    do: time_value * 60

  def convert(time_value, :minutes, :minutes) when is_float(time_value) or is_integer(time_value),
    do: time_value

  def convert(time_value, :minutes, :hours) when is_float(time_value) or is_integer(time_value),
    do: time_value / 60

  def convert(time_value, :minutes, :days) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :minutes, :hours) / 24

  def convert(time_value, :minutes, :weeks) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :minutes, :days) / 7

  def convert(time_value, :minutes, :years) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :minutes, :days) / @year_const

  def convert(time_value, :hours, :milliseconds)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :hours, :seconds) * 1000

  def convert(time_value, :hours, :seconds) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :hours, :minutes) * 60

  def convert(time_value, :hours, :minutes) when is_float(time_value) or is_integer(time_value),
    do: time_value * 60

  def convert(time_value, :hours, :hours) when is_float(time_value) or is_integer(time_value),
    do: time_value

  def convert(time_value, :hours, :days) when is_float(time_value) or is_integer(time_value),
    do: time_value / 24

  def convert(time_value, :hours, :weeks) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :hours, :days) / 7

  def convert(time_value, :hours, :years) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :hours, :days) / @year_const

  def convert(time_value, :days, :milliseconds)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :days, :seconds) * 1000

  def convert(time_value, :days, :seconds) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :days, :minutes) * 60

  def convert(time_value, :days, :minutes) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :days, :hours) * 60

  def convert(time_value, :days, :hours) when is_float(time_value) or is_integer(time_value),
    do: time_value * 24

  def convert(time_value, :days, :days) when is_float(time_value) or is_integer(time_value),
    do: time_value

  def convert(time_value, :days, :weeks) when is_float(time_value) or is_integer(time_value),
    do: time_value / 7

  def convert(time_value, :days, :years) when is_float(time_value) or is_integer(time_value),
    do: time_value / @year_const

  def convert(time_value, :weeks, :milliseconds)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :weeks, :seconds) * 1000

  def convert(time_value, :weeks, :seconds) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :weeks, :minutes) * 60

  def convert(time_value, :weeks, :minutes) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :weeks, :hours) * 60

  def convert(time_value, :weeks, :hours) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :weeks, :days) * 24

  def convert(time_value, :weeks, :days) when is_float(time_value) or is_integer(time_value),
    do: time_value * 7

  def convert(time_value, :weeks, :weeks) when is_float(time_value) or is_integer(time_value),
    do: time_value

  def convert(time_value, :weeks, :years) when is_float(time_value) or is_integer(time_value),
    do: time_value / 51.1429

  def convert(time_value, :years, :milliseconds)
      when is_float(time_value) or is_integer(time_value),
      do: convert(time_value, :years, :seconds) * 1000

  def convert(time_value, :years, :seconds) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :years, :minutes) * 60

  def convert(time_value, :years, :minutes) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :years, :hours) * 60

  def convert(time_value, :years, :hours) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :years, :days) * 24

  def convert(time_value, :years, :days) when is_float(time_value) or is_integer(time_value),
    do: convert(time_value, :years, :weeks) * 7

  def convert(time_value, :years, :weeks) when is_float(time_value) or is_integer(time_value),
    do: time_value * 51.1429

  def convert(time_value, :years, :years) when is_float(time_value) or is_integer(time_value),
    do: time_value
end
