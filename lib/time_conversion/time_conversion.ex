defmodule ExUnitConversion.TimeConversion do
  @moduledoc """
  This module is in charge of converting a time unit measurement to milliseconds
  """

  @typedoc """
  - `:interval` - Integer representing a time value
  - `:unit` - Atom representation of time unit. e.g. :seconds, :minutes, :hours, :days, :weeks, :years
  """

  @type unit :: :milliseconds | :seconds | :minutes | :hours | :days | :weeks | :years

  @doc """
  Given a time interval along with a time unit measurement, `to_ms` will convert
  the integer to milliseconds.

  ## Examples

      iex> ExUnitConversion.to_ms(1, :seconds)
      1_000

      iex> ExUnitConversion.to_ms(1, :hours)
      3_600_000
  """
  @spec to_ms(interval :: integer(), unit()) :: integer()
  def to_ms(interval, :milliseconds) when is_integer(interval), do: interval
  def to_ms(interval, :seconds) when is_integer(interval), do: interval * 1000
  def to_ms(interval, :minutes) when is_integer(interval), do: to_ms(interval, :seconds) * 60
  def to_ms(interval, :hours) when is_integer(interval), do: to_ms(interval, :minutes) * 60
  def to_ms(interval, :days) when is_integer(interval), do: to_ms(interval, :hours) * 24
  def to_ms(interval, :weeks) when is_integer(interval), do: to_ms(interval, :days) * 7
  def to_ms(interval, :years) when is_integer(interval), do: to_ms(interval, :days) * 365.25

  @spec to_seconds(interval :: integer(), unit()) :: float()
  def to_seconds(interval, :milliseconds), do: interval / 1000
  def to_seconds(interval, :seconds) when is_integer(interval), do: interval
  def to_seconds(interval, :minutes) when is_integer(interval), do: interval * 60

  def to_seconds(interval, :hours) when is_integer(interval),
    do: to_seconds(interval, :minutes) * 60

  def to_seconds(interval, :days) when is_integer(interval), do: to_seconds(interval, :hours) * 24
  def to_seconds(interval, :weeks) when is_integer(interval), do: to_seconds(interval, :days) * 7

  def to_seconds(interval, :years) when is_integer(interval),
    do: to_seconds(interval, :days) * 365.25

  @spec to_minutes(interval :: integer(), unit()) :: float()
  def to_minutes(interval, :milliseconds), do: to_minutes(interval, :seconds) / 1000
  def to_minutes(interval, :seconds) when is_integer(interval), do: interval / 60
  def to_minutes(interval, :minutes) when is_integer(interval), do: interval
  def to_minutes(interval, :hours) when is_integer(interval), do: interval * 60
  def to_minutes(interval, :days) when is_integer(interval), do: to_minutes(interval, :hours) * 24
  def to_minutes(interval, :weeks) when is_integer(interval), do: to_minutes(interval, :days) * 7

  def to_minutes(interval, :years) when is_integer(interval),
    do: to_minutes(interval, :days) * 365.25

  @spec to_hours(interval :: integer(), unit()) :: float()
  def to_hours(interval, :milliseconds), do: to_hours(interval, :seconds) / 1000

  def to_hours(interval, :seconds) when is_integer(interval),
    do: to_hours(interval, :minutes) / 60

  def to_hours(interval, :minutes) when is_integer(interval), do: interval / 60
  def to_hours(interval, :hours) when is_integer(interval), do: interval
  def to_hours(interval, :days) when is_integer(interval), do: interval * 24
  def to_hours(interval, :weeks) when is_integer(interval), do: to_hours(interval, :days) * 7
  def to_hours(interval, :years) when is_integer(interval), do: to_hours(interval, :days) * 365.25

  @spec to_days(interval :: integer(), unit()) :: float()
  def to_days(interval, :milliseconds), do: to_days(interval, :seconds) / 1000
  def to_days(interval, :seconds) when is_integer(interval), do: to_days(interval, :minutes) / 60
  def to_days(interval, :minutes) when is_integer(interval), do: to_days(interval, :hours) / 60
  def to_days(interval, :hours) when is_integer(interval), do: interval / 24
  def to_days(interval, :days) when is_integer(interval), do: interval
  def to_days(interval, :weeks) when is_integer(interval), do: interval * 7
  def to_days(interval, :years) when is_integer(interval), do: interval * 365.25

  @spec to_weeks(interval :: integer(), unit()) :: float()
  def to_weeks(interval, :milliseconds), do: to_weeks(interval, :seconds) / 1000

  def to_weeks(interval, :seconds) when is_integer(interval),
    do: to_weeks(interval, :minutes) / 60

  def to_weeks(interval, :minutes) when is_integer(interval), do: to_weeks(interval, :hours) / 60
  def to_weeks(interval, :hours) when is_integer(interval), do: to_weeks(interval, :days) / 24
  def to_weeks(interval, :days) when is_integer(interval), do: interval / 7
  def to_weeks(interval, :weeks) when is_integer(interval), do: interval
  def to_weeks(interval, :years) when is_integer(interval), do: interval * 51.1429

  @spec to_years(interval :: integer(), unit()) :: float()
  def to_years(interval, :milliseconds), do: to_years(interval, :seconds) / 1000

  def to_years(interval, :seconds) when is_integer(interval),
    do: to_years(interval, :minutes) / 60

  def to_years(interval, :minutes) when is_integer(interval), do: to_years(interval, :hours) / 60
  def to_years(interval, :hours) when is_integer(interval), do: to_years(interval, :days) / 24
  def to_years(interval, :days) when is_integer(interval), do: to_years(interval, :weeks) / 7
  def to_years(interval, :weeks) when is_integer(interval), do: interval / 51.1429
  def to_years(interval, :years) when is_integer(interval), do: interval
end
