defmodule LonelyNumberWithPatternMatch do
  @spec value(number, number, number) :: number
  def value(a, a, a) when is_number(a) do
    1
  end

  def value(a, a, b) when is_number(a) and is_number(b) do
    b
  end

  def value(a, b, a) when is_number(a) and is_number(b) do
    b
  end

  def value(b, a, a) when is_number(a) and is_number(b) do
    b
  end

  def value(a, b, c) when is_number(a) and is_number(b) and is_number(c) do
    a * b * c
  end

  def value(_a, _b, _c) do
    {:error, "Non numeric value(s)"}
  end
end
