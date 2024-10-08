edad = 1
mensaje = cond do
  edad === 1.0 -> "Es un bebé condicion estricta"
  edad <= 5 -> "Es un bebe"
  edad >= 18 -> "Es un adulto"
end

IO.puts mensaje
