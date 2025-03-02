#Задача 4. Да се напише програма, която въвежда от клавиатурата 3 реални, положителни числа и ги
#сортира във възходяш ред. Въвеждането на числата става на един ред, разделени с интервал.
#Сортираните числа се извеждат на един ред, разделени с интервал.

defmodule SortNumbers do

  defp parse_input(input) do
    numbers =
      input
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_float/1)

    if Enum.all?(numbers, &(&1 > 0)) do
      {:ok, numbers}
    else
      :error
    end
  end


  def sort_numbers() do
    IO.write("Въведете три положителни реални числа: ")

    case IO.gets("") |> parse_input() do
      {:ok, numbers} ->
        sorted = Enum.sort(numbers)
        IO.puts("Сортирани числа: #{Enum.join(sorted, " ")}")

      :error ->
        IO.puts("Моля въведете 3 РАЗЛИЧНИ ПОЛОЖИТЕЛНИ реални числа!")
    end
  end

end

IO.puts SortNumbers.sort_numbers()
