defmodule ListFilter do
  def call(list) do
    list
    |> get_numbers_list()
    |> get_odd_list()
    |> length()
  end

  def get_numbers_list(list), do: Enum.filter(list, fn item -> is_number(item) end)

  def get_odd_list(list), do: Enum.filter(list, fn item -> is_odd?(item) end)

  def is_odd?(n) do
    rem(n, 2) == 1
  end
end
