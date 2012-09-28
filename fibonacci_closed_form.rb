def fibonacci_closed_form(nth_number)
  (((1+Math.sqrt(5))/2)**(nth_number)/Math.sqrt(5)).round
end
puts "enter which fibonacci number to calculate "
nth_number = Integer(gets)
puts "Fibonacci number is #{fibonacci_closed_form(nth_number)}"