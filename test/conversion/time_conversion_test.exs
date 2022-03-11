defmodule Conversion.TimeConversionTest do
  use ExUnit.Case
  alias Conversion.TimeConversion

  describe "convert from milliseconds" do
    test "convert milliseconds to second" do
      assert 2_000 = TimeConversion.convert(2, :milliseconds, :seconds)
    end

    test "ms to minute" do
      assert 180_000 = TimeConversion.convert(3, :milliseconds, :minutes)
    end

    test "ms to hour" do
      assert 21_600_000 = TimeConversion.convert(6, :milliseconds, :hours)
    end

    test "ms to day" do
      assert 172_800_000 = TimeConversion.convert(2, :milliseconds, :days)
    end

    test "ms to week" do
      assert 3_024_000_000 = TimeConversion.convert(5, :milliseconds, :weeks)
    end

    test "ms to year" do
      3.15_576e10 = TimeConversion.convert(1, :milliseconds, :years)
    end
  end
end
