  defmodule Calculadora do
    # Operadores Aritméticos Basicos + - * /

    def suma(a,b) do
      a + b
    end

    def restar(a,b) do
      a - b
    end

    def multiplicar(a,b) do
      a * b
    end

    def dividir(a,b) do
      a / b
    end

  end

  IO.inspect(Calculadora.suma(5,8))
