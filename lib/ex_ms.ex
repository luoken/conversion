defmodule ExMs do
  @moduledoc """
  Small Elixir library to convert an interval to milliseconds.
  """

  @doc """
  Convert the incoming `interval` to milliseconds using the given time `unit` measurement.

  ## Parameters

    - interval: time interval to convert into milliseconds.
    - unit: Time unit. Supported units: `[:second, :minute, :hour, :day, :week]`


  ## Examples

      iex> ExMs.convert(1, :second)
      1_000
      iex> ExMs.convert(1, :hour)
      3_600_000
  """
  @spec convert(interval :: integer(), :second | :minute | :hour | :day | :week) :: integer()
  def convert(interval, :second), do: interval * 1000
  def convert(interval, :minute), do: convert(interval, :second) * 60
  def convert(interval, :hour), do: convert(interval, :minute) * 60
  def convert(interval, :day), do: convert(interval, :hour) * 24
  def convert(interval, :week), do: convert(interval, :day) * 7
end
