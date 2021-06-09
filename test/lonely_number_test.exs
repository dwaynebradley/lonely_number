defmodule LonelyNumberTest do
  use ExUnit.Case
  doctest LonelyNumber

  test "greets the world" do
    assert LonelyNumber.hello() == :world
  end
end
