defmodule LonelyNumberWithPatternMatchTest do
  use ExUnit.Case
  doctest LonelyNumberWithPatternMatch

  test "Test 3 different numbers" do
    assert LonelyNumberWithPatternMatch.value(2, 3, 7) == 42
  end

  test "Test first 2 params equal" do
    assert LonelyNumberWithPatternMatch.value(2, 2, 7) == 7
  end

  test "Test first and third params equal" do
    assert LonelyNumberWithPatternMatch.value(2, 3, 2) == 3
  end

  test "Test second and third params equal" do
    assert LonelyNumberWithPatternMatch.value(2, 3, 3) == 2
  end

  test "Test all numbers equal" do
    assert LonelyNumberWithPatternMatch.value(2, 2, 2) == 1
  end

  test "Test not numeric" do
    assert LonelyNumberWithPatternMatch.value("2", 3, 7) == {:error, "Non numeric value(s)"}
  end
end
