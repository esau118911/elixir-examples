# Ejemplo de un Mapa
person = %{
  name: "Esau",
  age: 26,
  city: "Villahermosa"
}
# Acceder a valores
IO.inspect("Acceso a valor nombre: #{person[:name]}")
IO.inspect("Acceso a valor edad: #{person[:age]}")

# Actualizar la edad  cuando la clave existe
updated_age = %{person | age: 35}

# Actualizar la edad insertando una clave nueva
insert_age = Map.put(person, :age, 38)

# Eliminar la clave :edad
delete_age = Map.delete(person, :age)

# Comprobando si una clave existe en el mapa
exists_city = Map.has_key?(person, :city)  # true

# Iterando sobre un mapa
Enum.each(person, fn {key, value} -> IO.inspect("#{key}: #{value}") end)

# Devolver una lista de valores
names = Enum.map(person, fn {key, value} -> value end)

IO.inspect(updated_age)
IO.inspect(insert_age)
IO.inspect(delete_age)
IO.inspect(exists_city)
IO.inspect(names)
