defmodule Discount do
  @moduledoc """
  Módulo Discount
  """
  @doc """
  Aplicar el 10% de descuento a todos los productos de un Mapa

  ## Examples:
    iex> products = %{"Monitor" => 3000, "Mouse" => 100, "Teclado" => 400}
    iex> Discount.apply_discount(products, 0.10)
    %{"Monitor" => 2700.0, "Mouse" => 90.0, "Teclado" => 360.0}
  """
  def apply_discount(products, discount) do
    products
    |> Enum.map(fn {key, value} -> discount_product(%{product: key, price: value, discount: discount}) end)
    |> Enum.into(%{})
  end

  @doc """
  Aplicar el descuento a un producto

  ## Examples:
    iex> product = %{product: "Monitor", price: 3000, discount: 0.10}
    iex> Discount.discount_product(product)
    {"Monitor", 2700.0}
  """

  def discount_product(%{product: product, price: price, discount: discount}) do
    {product, price - (price * discount)}
  end

end
