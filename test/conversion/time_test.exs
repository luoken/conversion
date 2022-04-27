defmodule Conversion.TimeTest do
  use ExUnit.Case
  alias Conversion.Time

  describe "convert from milliseconds" do
    test "convert milliseconds to second" do
      assert 0.002 = Time.convert(2, :milliseconds, :seconds)
    end

    test "ms to minute" do
      assert 5.0e-5 = Time.convert(3, :milliseconds, :minutes)
    end

    test "ms to hour" do
      assert 1.6666666666666667e-6 = Time.convert(6, :milliseconds, :hours)
    end

    test "ms to day" do
      assert 2.314814814814815e-8 = Time.convert(2, :milliseconds, :days)
    end

    test "ms to week" do
      assert 8.267195767195766e-9 = Time.convert(5, :milliseconds, :weeks)
    end

    test "ms to year" do
      assert 3.1688087814028955e-11 = Time.convert(1, :milliseconds, :years)
    end
  end
end
