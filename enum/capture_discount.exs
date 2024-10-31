defmodule CaptureDiscount do
  @moduledoc """
  Módulo CaptureDiscount Ejemplos utilizando el operador captura (&)
  """

  @doc """
  Aplicar el 10% de descuento a todos los productos de un Mapa

  ## Examples:
    iex> products = %{"Monitor" => 3000, "Mouse" => 100, "Teclado" => 400}
    iex> CaptureDiscount.apply_discount(products, 0.10)
    %{"Monitor" => 2700.0, "Mouse" => 90.0, "Teclado" => 360.0}
  """
  def apply_discount(products, discount) do
    products
    |> Map.keys()
    |> Enum.map(&discount_product(%{product: &1, price: Map.get(products, &1), discount: discount}))
    |> Enum.into(%{})
  end

  @doc """
  Aplicar el descuento a un producto

  ## Examples:
    iex> product = %{product: "Monitor", price: 3000, discount: 0.10}
    iex> CaptureDiscount.discount_product(%{})
    {"Monitor", 2700.0}
  """

  def discount_product(%{product: product, price: price, discount: discount}) do
    {product, price - (price * discount)}
  end

end
