#Задача 1. Да се напише програма, която въвежда от клавиатурата реално число r. Програмата да
#изчислява и отпечатва периметъра на окръжност с радиус r.

defmodule PerimeterOfCircle do
  @pi 3.14159

  def circle(r), do: @pi * @pi * r

end

IO.write("Въведете радиус на окръжност: r = ")
r =
  IO.gets(">")
  |> String.trim()
  |> String.to_integer()

IO.write("Периметърът на окръжността е: ")
IO.puts PerimeterOfCircle.circle(r)
