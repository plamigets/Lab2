#Задача 6. Напишете програма, която определя в кой квадрант лежи точката А с координати (ха, уа).
#Предполага се, че х не лежи на никоя от координатните оси.

defmodule PointQuadrant do
  def quadrant() do
    IO.write("Въведете координатите x и y на точка A: ")

    {x, y} =
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_float/1)
      |> List.to_tuple()

    cond do
      x == 0 or y == 0 -> IO.puts("Точката лежи на една от координатните оси. Въведете валидни координати.")
      x > 0 and y > 0 -> IO.puts("Точката A(#{x}, #{y}) се намира в първи квадрант.")
      x < 0 and y > 0 -> IO.puts("Точката A(#{x}, #{y}) се намира във втори квадрант.")
      x < 0 and y < 0 -> IO.puts("Точката A(#{x}, #{y}) се намира в трети квадрант.")
      x > 0 and y < 0 -> IO.puts("Точката A(#{x}, #{y}) се намира в четвърти квадрант.")
    end
  end
end

IO.puts PointQuadrant.quadrant()
