# Ejemplo de concatenar 2 listas de palabras claves
list1 = [name: "Esaú", last_name: "Hernández", age: 26]
list2 = [city: "Villahermosa", state: "Tabasco"]
IO.inspect(list1 ++ list2)

# Quitar un elemento de una lista
IO.inspect(list1 -- [name: "Esaú"])

# Acceder a valores
IO.inspect("Acceso a valor nombre: #{list1[:name]}")

# Uso del módulo Keyword si se requiere actualizar un valor
list3 = Keyword.put(list1, :age, 20)
IO.inspect(list3)
