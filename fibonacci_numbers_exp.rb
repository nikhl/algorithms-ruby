# Takes exponential time
def fibonacci_number(nth_number)
  return 0 if nth_number == 0
  return 1 if nth_number == 1
  return fibonacci_number(nth_number-1) + fibonacci_number(nth_number-2)
end
puts "enter which fibonacci number to calculate "
nth_number = Integer(gets)
puts "Fibonacci number is #{fibonacci_number(nth_number)}"
