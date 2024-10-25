defmodule Lists do
  # Función para obtener numeros pares y obtener una lista ordenada
  # iex> numbers = [5, 10, 3, 4, 1, 2]
  # iex> List.pair(numbers)
  def pair(numbers \\ []) do
    numbers
    |> Enum.filter(fn x -> rem(x, 2) == 0 end)
    |> Enum.sort()
  end
end
