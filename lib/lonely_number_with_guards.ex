defmodule LonelyNumberWithGuards do
  @spec value(number, number, number) :: number
  def value(a, b, c)
      when is_number(a) and is_number(b) and is_number(c) and a == b and b == c do
    1
  end

  def value(a, b, c) when is_number(a) and is_number(b) and is_number(c) and a == b do
    c
  end

  def value(a, b, c) when is_number(a) and is_number(b) and is_number(c) and b == c do
    a
  end

  def value(a, b, c) when is_number(a) and is_number(b) and is_number(c) and a == c do
    b
  end

  def value(a, b, c) when is_number(a) and is_number(b) and is_number(c) do
    a * b * c
  end

  def value(_a, _b, _c) do
    {:error, "Non numeric value(s)"}
  end
end
