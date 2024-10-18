defmodule Inmutable do
  # Ejemplos de inmutabilidad en funciones
  #  x = 5
  #  y = Inmutable.reducir(x)
  #  creamos un nuevo numero 4 y x no se altera o cambia su valor

  def incrementar(x), do: x + 1
  def reducir(x), do: x - 1
  def suma_lista([]), do: 0
  def suma_lista([head | tail]), do: head + suma_lista(tail)
end
