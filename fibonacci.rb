# frozen_string_literal: true

# fibonacci non-recursive

# Redefine the Problem
# fibonacci sums each number with the one before it! starting from 0.
# the number inputted in the method does not affect the sequence, only the duration of it
# since the number sets the duration of the sequence, the number sets the amount of iterations
# for every iteration, add the last element with the second last element and 
# push that into an array
def fib(number)
  fib_array = [0, 1]
  return fib_array[0..-2] if number <= 0
  return fib_array[0..1] if number == 1

  number.times do
    fib_array << fib_array[-1] + fib_array[-2]
  end
  fib_array[0..number - 1]
end

puts fib(6).inspect


# fibonacci recursive
