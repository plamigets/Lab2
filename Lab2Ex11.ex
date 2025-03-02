#Задача 11*. Да се напише програма, която въвежда от клавиатурата три цели числа, различни от
#нула. Програмата да извежда разликата между максималното четно число и минималното нечетно
#число между тях. Ако въведените числа са само нечетни, да извежда минималното от тях. Ако са
#само четни – максималното от тях.

defmodule EvenOddDifference do
  require Integer

  def calculate_difference() do
    IO.write("Въведете три различни цели числа, различни от нула: ")

    {a, b, c} =
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)
      |> List.to_tuple()

    if a != 0 and b != 0 and c != 0 and a != b and b != c and a != c do
      numbers = [a, b, c]
      even_numbers = Enum.filter(numbers, &Integer.is_even/1)
      odd_numbers = Enum.filter(numbers, &Integer.is_odd/1)

      cond do
        even_numbers != [] and odd_numbers != [] ->
          max_even = Enum.max(even_numbers)
          min_odd = Enum.min(odd_numbers)
          max_even - min_odd

        even_numbers == [] -> Enum.min(odd_numbers)
        odd_numbers == [] -> Enum.max(even_numbers)
      end
    else
      IO.puts("Моля, въведете три РАЗЛИЧНИ цели числа, различни от нула!")
    end
  end
end

IO.puts EvenOddDifference.calculate_difference()
