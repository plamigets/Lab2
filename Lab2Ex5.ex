#Задача 5. Напишете програма, която намира корена на линейното уравнение a*x + b = 0. На изхода
#се извежда стойността на х и подходящо съобщение.

defmodule LinearEq do
    def calculate() do
      IO.puts("Въведете a и b: ")

      {a,b} =
        IO.gets("> ")
        |> String.trim()
        |> String.split()
        |> Enum.map(&String.to_integer/1)
        |> List.to_tuple()


        cond do
            a == 0 and b == 0 ->
                IO.puts("Уравнението има безброй решения.")

              a == 0 ->
                IO.puts("Уравнението няма решение.")

              true ->
                x = -b / a
                IO.puts("Решението е x = #{x}")
        end
    end
end

IO.puts LinearEq.calculate()
