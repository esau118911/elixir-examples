# Operadores Booleanos || , && || !

numero = 7
a = true

mensaje = cond do
  numero == 10 || numero == 15 -> "Esto es #{numero} operador || "
  numero == 25 && a -> "Esto es un #{numero} operador && "
  !a -> "Esto es un #{numero} operador !"
  numero -> "No cumple ninguna de las anteriores #{numero}"
end

IO.inspect(mensaje)
