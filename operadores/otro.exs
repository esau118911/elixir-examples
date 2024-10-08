# Operadores Adicionales
numero = 40
a = true
b = false

mensaje = cond do
  not a -> "Esto es un operado (not) #{a}"
  b and numero -> "Esto es #{numero} operador and "
  b or numero  -> "Esto es un #{numero} operador or "
end

IO.puts mensaje
