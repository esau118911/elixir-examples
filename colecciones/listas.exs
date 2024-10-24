defmodule Listas do
  # Ejemplos con Listas para obtener numeros pares y obtener una lista ordenada
  def pares do
    numeros = [5, 10, 3, 4, 1, 2]
    resultado = numeros
    |> Enum.filter(fn x -> rem(x, 2) == 0 end)
    |> Enum.sort()
  end
end
