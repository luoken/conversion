defmodule Conversion do
  @moduledoc """
  Small Elixir library for converting one time unit to another.
  """

  defdelegate convert(interval, unit, unit), to: Conversion.TimeConversion

  defdelegate convert(temp, to, from), to: Conversion.TemperatureConversion
end
