# Задача 3. Да се състави програма, която въвежда последователно от клавиатурата три  реални
# числа и извежда най-голямото от тях.

defmodule BiggerThan do
  def comparison() do
    IO.write("Въведете три различни реални числа : ")

    {a, b, c} =
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_float/1)
      |> List.to_tuple()

    if a != b and b != c and a != c do
      cond do
        a > b and a > c -> "#{a} е по-голямо от #{b} и #{c} ."
        b > a and b > c -> "#{b} е по-голямо от #{a} и #{c} ."
        c > a and c > b -> "#{c} е по-голямо от #{a} и #{b} ."
      end
    else
      IO.puts("Моля въведете 3 РАЗЛИЧНИ реални числа! ")
    end

  end
end

IO.puts(BiggerThan.comparison())
