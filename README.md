# Conversion

`Conversion` is a package for converting from one measurement to another. `Conversion` can do `time`, `temperature`, and `distance` conversions.

The available time unit measurements are `[:milliseconds, :seconds, :minutes, :hours, :days, :weeks, years]`.

Temperature measurements available are `[:kelvin, :celius, :fahrenheit]`.

Distance measurements include `[:miles, :yards, :feet, :inches, :kilometers, :meters, :centimeters, :millimeters, :micrometers, :nanometers]`.

## Usage

```elixir
  iex> Conversion.Time.convert(1000, :milliseconds, :seconds)
  1

  iex> Conversion.Time.convert(3, :seconds, :hours)
  8.333333333333334e-4

  iex> Conversion.Temperature.convert(32, :fahrenheit, :kelvin)
  273.15

  iex> Conversion.Distance.convert(2423, :inches, :miles)
  0.03824179292929293
```


## Installation

```elixir
def deps do
  [
    {:conversion, "~> 0.1.0"}
  ]
end
```

