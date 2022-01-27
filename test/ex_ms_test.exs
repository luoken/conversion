defmodule ExMsTest do
  use ExUnit.Case
  alias ExMs

  describe "convert/2" do
    test "convert second" do
      assert 2_000 = ExMs.convert(2, :second)
    end

    test "convert minute" do
      assert 180_000 = ExMs.convert(3, :minute)
    end

    test "convert hour" do
      assert 21_600_000 = ExMs.convert(6, :hour)
    end

    test "convert day" do
      assert 172_800_000 = ExMs.convert(2, :day)
    end

    test "convert week" do
      assert 3_024_000_000 = ExMs.convert(5, :week)
    end
  end
end
