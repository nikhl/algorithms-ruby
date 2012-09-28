def fibonacci_number(length)
  return 0 if length == 0
  return 1 if length == 1
  return fibonacci_number(length-1) + fibonacci_number(length-2)
end
puts "enter which fibonacci number to calculate "
length = Integer(gets)
puts "Fibonacci number is #{fibonacci_number(length)}"
