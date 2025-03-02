#Задача 12. Да се напише програма, която въвежда от клавиатурата трицифрено число n.
#Програмата проверява дали цифрите му са различни. Ако са различни, извежда „yes“ и
#произведението на първата и трета цифра на числото. В противен случай, извежда „no“ и числото
#изписано в обратен ред.

defmodule Check do
  def check_number(num) when num >= 100 and num <= 999 do
    digits = Integer.digits(num)

    if Enum.uniq(digits) == digits do
      first = Enum.at(digits, 0)
      last = Enum.at(digits, 2)

      result = first * last

      IO.puts("yes")
      IO.puts("Произведение: #{result}")
    else
      reversed =
        digits
        |> Enum.reverse()
        |> Integer.undigits()

      IO.puts("no")
      IO.puts("Обърнато число: #{reversed}")
    end
  end

  def check_number(_), do: IO.puts("Моля, въведете трицифрено число!")
end

IO.write("Въведете цяло трицифрено число: ")
num =
  IO.gets("")
  |> String.trim()
  |> String.to_integer()

IO.puts Check.check_number(num)
