#Задача 2. Да се състави програма, която въвежда от клавиатурата две различни реални числа.
#Програмата да изведе по-голямото от тях.

defmodule BiggerThan do

  def comparison(a, b) when a != b do

    cond do
      a > b -> "#{a} е по-голямо от #{b} ."
      a < b -> "#{b} е по-голямо от #{a}"
    end

  end

end

IO.write("Въведете първото реално число: ")
a =
  IO.gets("> ")
  |> String.trim()
  |> String.to_integer()

IO.write("Въведете второ различно реално число: ")
b =
  IO.gets("> ")
  |> String.trim()
  |> String.to_integer()

IO.write("Резултатът от сравнението е: ")
IO.puts BiggerThan.comparison(a, b)
