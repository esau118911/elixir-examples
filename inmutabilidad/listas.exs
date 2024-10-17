# Ejemplo de Inmutabilidad en una lista
lista = [1, 2, 3, 4, 5]
nueva_lista = Enum.map(lista, fn x -> x * 2 end)
IO.inspect(nueva_lista)
