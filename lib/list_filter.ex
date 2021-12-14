defmodule ListFilter do
  def call(list) do
    filter(list)
  end

  defp filter(list) do
    numbers_list = Enum.filter(list, fn x -> is_number(x) end)
    impares = Enum.filter(numbers_list, fn x -> rem(x, 2) != 0 end)
    Enum.count(impares)
  end
end
