# ExMs

`ExMs` is a small simple package for converting an interval into milliseconds.
Taking in an integer and a time unit measurement, `ExMs` will return the result in milliseconds.

The available time unit measurements are `[:second, :minute, :hour, :day, :week]`.

## Usage

```elixir
  iex> ExMs.convert(1, :second)
  1_000

  iex> ExMs.convert(3, :hour)
  10_800_000
```


## Installation

```elixir
def deps do
  [
    {:ex_ms, "~> 0.1.0"}
  ]
end
```

