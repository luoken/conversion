defmodule Conversion do
  @moduledoc """
  Elixir library for converting one unit of measurement to another.
  """

  defdelegate convert(interval, to, from), to: Conversion.Time

  defdelegate convert(temp, to, from), to: Conversion.Temperature
end
