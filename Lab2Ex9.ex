#Задача 9. Да се напише програма, която въвежда от клавиатурата цяло четирицифрено число.
#Да се провери дали произведението на цифрите е кратно на 3.


defmodule MultipleOfThree do
  def check_product() do
    IO.write("Въведете четирицифрено число: ")

    number =
      IO.gets("")
      |> String.trim()

    if String.length(number) == 4 do
      digits =
        String.graphemes(number)
        |> Enum.map(&String.to_integer/1)
      product = Enum.reduce(digits, 1, &*/2)

      if rem(product, 3) == 0 do
        IO.puts("Произведението на цифрите на #{number} е #{product} и е кратно на 3.")
      else
        IO.puts("Произведението на цифрите на #{number} е #{product} и НЕ е кратно на 3.")
      end
    else
      IO.puts("Моля, въведете четирицифрено число!")
    end
  end
end

IO.puts MultipleOfThree.check_product()
