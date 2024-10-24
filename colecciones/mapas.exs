# Ejemplo de un Mapa
persona = %{
  nombre: "Esau",
  edad: 26,
  ciudad: "Villahermosa"
}
# Acceder a valores
IO.inspect("Acceso a valor nombre: #{persona[:nombre]}")
IO.inspect("Acceso a valor edad: #{persona[:edad]}")

# Actualizar la edad
actualido_edad = Map.put(persona, :edad, 35)

# Eliminar la clave :edad
eliminado_edad = Map.delete(persona, :edad)

# Comprobando si una clave existe en el mapa
existe_ciudad = Map.has_key?(persona, :ciudad)  # true

# Iterando sobre un mapa
Enum.each(persona, fn {clave, valor} -> IO.inspect("#{clave}: #{valor}") end)

# Devolver una lista de valores
nombres = Enum.map(persona, fn {clave, valor} -> valor end)

IO.inspect(actualido_edad)
IO.inspect(eliminado_edad)
IO.inspect(existe_ciudad)
IO.inspect(nombres)
