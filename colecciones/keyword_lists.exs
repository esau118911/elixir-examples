# Ejemplo de concatenar 2 listas de palabras claves
list1 = [nombre: "Esaú", apellido: "Hernández", edad: 26]
list2 = [ciudad: "Villahermosa", estado: "Tabasco"]
IO.inspect(list1 ++ list2)

# Quitar un elemento de una lista
IO.inspect(list1 -- [nombre: "Esaú"])

# Acceder a valores
IO.inspect("Acceso a valor nombre: #{list1[:nombre]}")

# Uso del módulo Keyword si se requiere actualizar un valor
list3 = Keyword.put(list1, :edad, 20)
IO.inspect(list3)
