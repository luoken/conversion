defmodule ExUnitConversion do
  @moduledoc """
  Small Elixir library for converting one time unit to another.
  """

  defdelegate to_ms(interval, unit), to: ExUnitConversion.TimeConversion

  defdelegate to_seconds(interval, unit), to: ExUnitConversion.TimeConversion

  defdelegate to_minutes(interval, unit), to: ExUnitConversion.TimeConversion

  defdelegate to_hours(interval, unit), to: ExUnitConversion.TimeConversion

  defdelegate to_days(interval, unit), to: ExUnitConversion.TimeConversion

  defdelegate to_weeks(interval, unit), to: ExUnitConversion.TimeConversion

  defdelegate to_years(interval, unit), to: ExUnitConversion.TimeConversion
end
