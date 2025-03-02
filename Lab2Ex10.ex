#Задача 10. Да се напише програма, която въвежда от клавиатурата цяло четирицифрено число. Да
#се провери дали числото е симетрично, т.е. записът му отляво надясно и отдясно наляво е еднакъв.

defmodule SymmetricNumber do
  def check_palindrome() do
    IO.write("Въведете четирицифрено число: ")

    number =
      IO.gets("")
      |> String.trim()

    if String.length(number) == 4 do
      if number == String.reverse(number) do
        IO.puts("Числото #{number} е симетрично.")
      else
        IO.puts("Числото #{number} не е симетрично.")
      end
    else
      IO.puts("Моля, въведете четирицифрено число!")
    end
  end
end

IO.puts SymmetricNumber.check_palindrome()
