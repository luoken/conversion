defmodule ExMsTest do
  use ExUnit.Case
  alias Conversion

  describe "to_ms/2" do
    test "to_ms second" do
      assert 2_000 = Conversion.to_ms(2, :seconds)
    end

    test "to_ms minute" do
      assert 180_000 = Conversion.to_ms(3, :minutes)
    end

    test "to_ms hour" do
      assert 21_600_000 = Conversion.to_ms(6, :hours)
    end

    test "to_ms day" do
      assert 172_800_000 = Conversion.to_ms(2, :days)
    end

    test "to_ms week" do
      assert 3_024_000_000 = Conversion.to_ms(5, :weeks)
    end

    test "to_ms year" do
      3.15_576e10 = Conversion.to_ms(1, :years)
    end
  end
end
