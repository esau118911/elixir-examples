# tabla de condiciones cond similar a un switch para evitar muchas condiciones de if
edad = 2
mensaje = cond do
  edad == 1 -> "Es un bebe"
  edad < 10 -> "es un niño"
  edad < 18 -> "es un adolescente"
  edad < 60 -> "es un adulto"
  edad > 60 -> "es un adulto mayor"
end

IO.puts mensaje
