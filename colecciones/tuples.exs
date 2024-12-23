defmodule Tuples do
  # Ejemplos con Tuplas
  def divide(a, b) do
    if b == 0 do
      {:error, "División por cero"}
    else
      {:ok, a / b}
    end
  end

  # Funcion para acceder a una tupla de listas y obtener una suma
  def access do
    data = {
      [1, 2, 3],
      ["a", "b", "c"],
      [true, false]
    }
    result = Enum.sum(elem(data, 0))
    {:ok, "La suma total de numeros es: #{result}" }
  end
end
