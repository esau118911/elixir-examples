# Ejemplo de Inmutabilidad en una tuplas
tupla = {1, 2, 3, 4, 5}

tupla
|> Tuple.to_list()
|> Enum.map(fn elemento -> elemento * 2 end)
|> IO.inspect
