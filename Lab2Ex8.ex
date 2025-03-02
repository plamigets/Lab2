#Задача 8. Да се напише програма, която въвежда от клавиатурата цяло трицифрено число. Да се
#провери дали сумата от цифрите на числото е четно число.

defmodule Check do

  def sum(num) do
    n =
      num
        |> Integer.digits
        |> Enum.sum


    if (rem(n,2) == 0) do
      IO.puts("#{n} е четно число.")
    else
       IO.puts("#{n} е нечетно число.")
    end
  end
end


IO.write("Въведете цяло трицифрено число: ")
num = IO.gets("") |> String.trim() |> String.to_integer()
IO.puts Check.sum(num)
