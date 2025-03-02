#Задача 7. Да се напише програма, която въвежда символ от клавиатурата. Да се провери и отпечата
#дали въведеният символ е число.
#Упътване: Използвайте кодовете на символите. Числата от 0 до 9 имат поредни кодове в ASCII
#таблицата.

defmodule NumSymbol do
    def check() do
      IO.write("Въведете символ: ")
      char =
        IO.gets("")
        |> String.trim()
        |> String.at(0)

      if char do
        ascii_code = String.to_charlist(char) |> List.first()

        if ascii_code >= 48 and ascii_code <= 57 do
          IO.puts("Въведеният символ е число.")
        else
          IO.puts("Въведеният символ не е число.")
        end
      else
        IO.puts("Не е въведен символ.")
      end
    end
  end

  IO.puts NumSymbol.check()
