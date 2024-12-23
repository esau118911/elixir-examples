defmodule CaptureOperator do
  @moduledoc """
  Módulo CaptureOperator Ejemplos utilizando el operador captura (&)
  """

  @doc """
  Función para filtrar una lista de átomos y obtener solo aquellos que comienza con :a

  ## Examples:
  iex> frusts = [:apple, :banana, :kiwi]
  iex> EnumExample.filter_fruits(frusts, ":a")
  """
  def filter_fruits(fruits \\ [], prefix) do
    Enum.filter(fruits, &String.starts_with?(Atom.to_string(&1), prefix))
  end

  @doc """
  Función para agrupar elementos en un mapa de acuerdo a su edad
  ## Examples:
    persons = [
      %{nombre: "Juan", edad: 30},
      %{nombre: "Luis", edad: 25},
      %{nombre: "María", edad: 30},
      %{nombre: "Pedro", edad: 25}
    ]
    iex> EnumExample.group_by_persons(persons)
  """
  def group_by_persons(persons \\ []) do
    Enum.group_by(persons, &(&1.edad))
  end
end
