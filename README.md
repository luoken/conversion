# ExUnitConversion

`ExUnitConversion` is a small simple package for simple conversions. `ExUnitConversion` can do `time_conversion` which will
take in an integer and a unit and do the conversion


The available time unit measurements are `[:milliseconds, :seconds, :minutes, :hours, :days, :weeks, years]`.

## Usage

```elixir
  iex> ExUnitConversion.to_ms(1, :seconds)
  1_000

  iex> ExUnitConversion.to_weeks(3, :hours)
   0.017_857_142_857_142_856
```


## Installation

```elixir
def deps do
  [
    {:ex_unit_conversion, "~> 0.1.0"}
  ]
end
```

