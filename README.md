# Conversion

`Conversion` is a small simple package for simple conversions. `Conversion` can do `time_conversion` which will
take in an integer and a unit and do the conversion


The available time unit measurements are `[:milliseconds, :seconds, :minutes, :hours, :days, :weeks, years]`.

## Usage

```elixir
  iex> Conversion.to_ms(1, :milliseconds, :seconds)
  1_000

  iex> Conversion.to_weeks(3, :seconds, :hours)
  10_800
```


## Installation

```elixir
def deps do
  [
    {:conversion, "~> 0.1.0"}
  ]
end
```

