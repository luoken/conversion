# Conversion

`Conversion` is a package for converting one unit of measurement to another. `Conversion` can do `time` or `temperature` conversions which will take in an integer or float and a from and to unit and output the conversion result.


The available time unit measurements are `[:milliseconds, :seconds, :minutes, :hours, :days, :weeks, years]`.

Other available unit measurements are `[:kelvin, :celius, :fahrenheit]`

## Usage

```elixir
  iex> Conversion.convert(1, :milliseconds, :seconds)
  1_000

  iex> Conversion.convert(3, :seconds, :hours)
  10_800

  iex> Conversion.convert(32, :fahrenheit, :kelvin)
  273.15
```


## Installation

```elixir
def deps do
  [
    {:conversion, "~> 0.1.0"}
  ]
end
```

